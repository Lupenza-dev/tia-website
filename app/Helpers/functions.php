<?php

use App\Models\Menu;
use App\Models\MenuItem as MenuItem;
use App\Models\Page as Page;
use App\Models\Gallery as Gallery;
use App\Models\AdministrationCategory as AdministrationCategory;
use App\Models\Administration as Administration;
use Carbon\Carbon;
use App\Models\RelatedLink;
use App\Models\ImportantLink;
use App\Models\QuickLink;
use App\Models\SocialLink;
use App\Models\Sponsor;
use App\Models\OnlineService;
use App\Models\VisitorsLog;
use Illuminate\Support\Facades\File as File;
use Illuminate\Support\Str;


function permission($permissions)
{
  $permissions = is_array($permissions) ? $permissions : [$permissions];
  foreach ($permissions as $key => $permission) {
    $routeName = explode('.', $permission)[1];
    $permissionArray = [
      'cms.' . $routeName . '.index',
      'cms.' . $routeName . '.create',
      'cms.' . $routeName . '.store',
      'cms.' . $routeName . '.edit',
      'cms.' . $routeName . '.update',
      'cms.' . $routeName . '.show',
      'cms.' . $routeName . '.destroy'
    ];

    foreach ($permissionArray as $item) {

      if (auth()->user()->can($item)): return true;
      endif;
    }
  }
  return false;
}

function activeLink($paths_given)
{
  // get the entire url and create array
  $url_array = explode('/', $_SERVER['REQUEST_URI']);
  if (count($url_array) > 2) {
    // check if next element exist
    $cms_next_path_key = array_search('cms', $url_array) + 1;
    $cms_next_path_key = (array_key_exists($cms_next_path_key, $url_array)) ? array_search('cms', $url_array) + 1 : array_search('cms', $url_array);
  } else {
    $cms_next_path_key = array_search('cms', $url_array);
  }

  // echo json_encode('supa dupa manyasi');exit;
  echo (in_array($value = $url_array[$cms_next_path_key], $paths_given)) ? " active ega-trigger" : '';
}

function breadcrumb()
{
  $demoName = '/' . strtoLower(env('APP_NAME')) . '/'; // remove demo dir name on uri
  $uri = str_replace($demoName, '/', parse_url($_SERVER["REQUEST_URI"], PHP_URL_PATH));
  $uri = preg_replace('/^\//', '', $uri, 1);

  $last_item = MenuItem::where('url', '=', $uri)->first();
  $breadcrumbList = [];

  if (! empty($last_item)) {
    array_push($breadcrumbList, $last_item->title);
    previousBreadcrumbItem($last_item, $breadcrumbList);
  }
}

function previousBreadcrumbItem($breadcrumbPage, $breadcrumbList)
{

  if ($breadcrumbPage->parent > 0) {
    $parent = MenuItem::where('id', '=', $breadcrumbPage->parent)->first();
    array_push($breadcrumbList, $parent->title);
    previousBreadcrumbItem($parent, $breadcrumbList);
  } else {
    $breadcrumbList = array_reverse($breadcrumbList, true);

    foreach ($breadcrumbList as $key => $item) {
      if ($key == array_key_last($breadcrumbList)) {
        echo '<li class="breadcrumb-item list-inline-item active">' . $item . '</li>';
      } else {
        echo '<li class="breadcrumb-item list-inline-item">' . $item . '</li>';
      }
    }
  }
}


function str_limit($string, $limit)
{
  return str::limit($string, $limit);
}

function status($id)
{
  switch ($id) {
    case "0":
      return "Inactive";
      break;
    case "1":
      return "Active";
      break;
  }
}

function utube_hash($url)
{
  $temp = $url;
  $url = explode('=', $url);
  if (isset($url[1])) {
    if (strpos($url[1], '&')) {
      $url = explode('&', $url[1]);
      return $url[0];
    } else {
      return $url[1];
    }
  } else {
    $url = $temp;
    $url = explode('/', $url);
    if (isset($url[count($url) - 1])) {
      return $url[count($url) - 1];
    } else {
      return "";
    }
  }
}


function youtube_thumbnail($url)
{
  return 'https://img.youtube.com/vi/' . utube_hash($url) . '/maxresdefault.jpg';
}

function recursiveMenu($parent = 0, $menu_id = 0, $menu_name = 'main_nav')
{

  static $flag = true;

  if ($flag) {
    $menu_items = MenuItem::where('menu_id', '=', $menu_id)->where('parent', '=', $parent)->orderBy('position', 'ASC')->get();
    $flag = false;
  } else {
    $menu_items = MenuItem::where('menu_id', '=', $menu_id)->where('parent', '=', $parent)->orderBy('position', 'ASC')->get();
  }

  foreach ($menu_items as $key => $child) {
    echo '<li class="dd-item" data-id="' . $child->id . '">
           <div class="dd-handle">' . htmlentities($child->title_en) . '</div>
             <span class="dropd"><i class="feather icon-chevrons-down"></i></span>
               <div class="render-forms"></div>';

    openOrderedList($child);

    recursiveMenu($child->id, $child->menu_id);

    closeOrderedList($child);
    echo '</li>';
  }
  return;
}

function recursiveLinksMenu($parent = 0, $linkType = 'RelatedLink', $active = 1)
{

  static $flag = true;

  if ($linkType == 'RelatedLink') {

    $model = new RelatedLink();
    $delete_url = '/cms/related_links';
  } else if ($linkType == 'QuickLink') {

    $model = new QuickLink();
    $delete_url = '/cms/quick_links';
  } else if ($linkType == 'SponsorLink') {

    $model = new Sponsor();
    $delete_url = '/cms/sponsors';
  } else if ($linkType == 'ImportantLink') {

    $model = new ImportantLink();
    $delete_url = '/cms/important_links';
  } else if ($linkType == 'OnlineService') {

    $model = new OnlineService();
    $delete_url = '/cms/online_services';
  } else {

    $model = new SocialLink();
    $delete_url = '/cms/social_links';
  }

  if ($flag) {
    $menu_items = $model::where('active', '=', $active)
      ->where('parent', '=', $parent)
      ->orderBy('position', 'ASC')->get();
    $flag = false;
  } else {
    $menu_items = $model::where('active', '=', $active)
      ->where('parent', '=', $parent)
      ->orderBy('position', 'ASC')->get();
  }

  foreach ($menu_items as $key => $child) {

    echo '<li class="dd-item hover-show" data-id="' . $child->id . '">
            <div class="dd-handle">' .
      htmlentities($child->title_en) . ' | ' . $child->url . '
            </div>
             <span class="dd-actions">
             <a href="' . url($child->url) . '" target="_blank"><i class="feather icon-eye show-on-hover"></i></a>
              <i class="feather icon-edit show-on-hover" data-toggle="modal" data-target="#OpenModelContainer' . $child->id . '"></i>
              <a href="' . url($delete_url, $child->id) . '" class="show-on-hover" data-method="delete" ><i class="feather icon-trash-2"></i></a>
             </span>';

    if ($model::where('parent', '=', $child->id)->count()) {
      echo '<ol class="dd-list">';
    }

    recursiveLinksMenu($child->id, $linkType, $active);

    if ($model::where('parent', '=', $child->id)->count()) {
      echo '</ol>';
    }

    echo '</li>';
  }
  return;
}


function openOrderedList($child)
{
  if ($child->hasChildren()) {
    echo '<ol class="dd-list">';
  }
}

function closeOrderedList($child)
{
  if ($child->hasChildren()) {
    echo '</ol>';
  }
}


function getFileSize($size)
{

  $size = $size / 1024;
  if (round($size) >= 1024) {
    return round($size / (1024)) . " Mb";
  } else {
    return round($size) . " Kb";
  }
}

function deleteUnusedFields($unwanted, &$values)
{
  foreach ($unwanted as $value) {
    if (isset($values[$value])) {
      unset($values[$value]);
    }
  }
  return;
}

function title($info)
{
  $fields = Illuminate\Support\Collection::make(Config::get('es')['translatable_fields']);
  $title = Config::get('es')['title'];

  $m = array_only($info, $title);
  if (is_array($m)) {
    $key = key($m);
    $title = substr($key, 0, strrpos($key, '_'));
    return $info[$title . curlang()];
  }
  return '';
}

function recursiveOtherLinksMenu($parent = 0, $linkType = 'RelatedLink', $active = 1)
{
  $model = null;
  if ($linkType == 'courses') {

    $model = \DB::table('courses')->get();
    $delete_url = '/cms/courses';
  }

  if ($linkType == 'short_courses') {

    $model = \DB::table('short_courses')->get();
    $delete_url = '/cms/short_courses';
  }

  if ($linkType == 'long_courses') {

    $model = \DB::table('long_courses')->get();
    $delete_url = '/cms/long_courses';
  }

  $menu_items = $model;
  foreach ($menu_items as $key => $child) {

    echo '<li class="dd-item hover-show" data-id="' . $child->id . '">
            <div class="dd-handle">' .
      htmlentities($child->title_en) . '
            </div>
             <span class="dd-actions">
              <a href="' . url($delete_url, $child->id) . '/edit" ><i class="feather icon-edit show-on-hover"></i></a>
              <a href="' . url($delete_url, $child->id) . '" class="show-on-hover" data-method="delete" ><i class="feather icon-trash-2"></i></a>
             </span>';
    echo '</li>';
  }
  return;
}

function recursiveSideMenu($id)
{
  $menu_items = MenuItem::whereIn('id', $id)->get();
  foreach ($menu_items as $key => $child) {

    echoLinks($child, TRUE);

    openOrderedList($child);

    recursivelySideMenu($child->id, $child->menu_id);

    closeOrderedList($child);
    echo '</li>';
  }
  return;
}

function echoLinks($child, $isParent)
{
  if ($isParent) {
    echo '<div class="col p-0 m-0">  
    <div class="d-flex align-items-center hover-bg border-bottom-primary-faded  h-100 w-100 p-2  pointer-hover position-relative bg-primary">                                    
      <a href="' . url(htmlentities($child->url)) . '" rel="noopener noreferrer" class="d-flex w-100  py-1 align-items-center text-bold text-white">
        <i class="fa  text-md fa-hand-point-right px-2 pr-3 align-self-center"></i>
        <i class="fa text-md fa-globe px-2 pr-3  align-self-center"></i>
        <span class="d-inline-block">
          <div> ' . htmlentities($child->title) . '</div>                        
        </span>   
      </a>                
    </div>
  </div>';
  } else {
    echo '<div class="col p-0 m-0">  
        <div class="d-flex align-items-center hover-bg border-bottom-primary-faded  h-100 w-100 p-2  pointer-hover position-relative">                                    
          <a href="' . url(htmlentities($child->url)) . '" rel="noopener noreferrer" class="d-flex w-100  py-1 align-items-center text-bold text-primary">
            <i class="fa  text-md fa-hand-point-right px-2 pr-3 align-self-center"></i>
            <i class="fa text-md fa-bullseye px-2 pr-3  align-self-center"></i>
            <span class="d-inline-block">
              <div> ' . htmlentities($child->title) . '</div>                        
            </span>   
          </a>                
        </div>
      </div>';
  }
}

function getUriId()
{
  $path = pathInfo(url()->current());
  $menu = MenuItem::where("url", 'like', "%" . $path["basename"] . "%")->first();
  if (!empty($menu)) {
    return $menu->id;
  } else {
    return null;
  }
}

function getParentId($id)
{
  $parent = findParent($id);
  if (!empty($parent)) {
    if ($parent->parent == 0) {
      recursiveSideMenu([$parent->id]);
    } else {
      getParentId($parent->parent);
    }
  }
}

function findParent($id)
{
  return MenuItem::where('id', $id)->first();
}

function recursivelySideMenu($parent = 0, $menu_id = 0, $menu_name = 'main_nav')
{

  static $flag = true;

  if ($flag) {
    $menu_items = MenuItem::where('menu_id', '=', $menu_id)->where('parent', '=', $parent)->orderBy('position', 'ASC')->get();
    $flag = false;
  } else {
    $menu_items = MenuItem::where('menu_id', '=', $menu_id)->where('parent', '=', $parent)->orderBy('position', 'ASC')->get();
  }

  foreach ($menu_items as $key => $child) {
    echoLinks($child, FALSE);

    openOrderedList($child);

    recursivelySideMenu($child->id, $child->menu_id);

    closeOrderedList($child);
    echo '</li>';
  }
  return;
}

function leftMenu()
{
  $demoName = '/' . strtoLower(env('APP_NAME')); // remove demo dir name on uri
  $uri = str_replace($demoName, '', $_SERVER['REQUEST_URI']);
  $uri = preg_replace('/^\//', '', $uri, 1);


  $menu = Menu::where('category', '=', 'main_nav')->first();
  $opend_item = $menu->menu_items()->where('url', '=', $uri)->where('status', '=', 1)->first();
  // $parent_item = $menu->menu_items()->where('id','=',$opend_item->parent)->where('status','=',1)->first();
  $menu_string = '<div class="list-group">';

  if (! empty($opend_item->parent)) {
    $child_items = MenuItem::where('parent', '=', $opend_item->parent)->where('status', '=', 1)->orderBy('position', 'ASC')->get();


    if ($child_items->count()) {
      foreach ($child_items as $key => $child) {
        $child_items_inside = $menu->menu_items()->where('parent', '=', $child->id)->where('status', '=', 1)->orderBy('position', 'ASC')->get();

        if ($child_items_inside->count()) {
          $menu_string .= '
              <div class="dropdown">
                <a class="list-group-item list-group-item-action dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  ' . $child->title . '
                </a>
                <div class="dropdown-menu py-0 w-100" aria-labelledby="dropdownMenuLink">
                  <div class="list-group">';

          foreach ($child_items_inside as $grand) {
            $menu_string .= "<a class='list-group-item list-group-item-action' href= '" . url($grand->url) . "'>" . wordwrap($grand->title, 20) . "</a>";
          }

          $menu_string .= "
                      </div>
                  </div>
              </div>";
        } else {
          $active_child = ($child->id == $opend_item->id) ? 'text-primary' : '';
          $menu_string .= "
              <a class='list-group-item list-group-item-action $active_child' 
                href= '" . url($child->url) . "'>" . wordwrap($child->title, 27, "<br>\n") . "</a>
            ";
        }
      }
    }
  }

  echo $menu_string .= '</div>';
}

function Visitors()
{
  $now = Carbon::now();
  return [
    'today'     => number_format(VisitorsLog::whereDate('created_at', '=', Carbon::today()->toDateString())->count()),
    'yesterday' => number_format(VisitorsLog::whereDate('created_at', '=', Carbon::yesterday()->toDateString())->count()),
    'week'      => number_format(VisitorsLog::whereBetween('created_at', [$now->copy()->startOfWeek()->toDateString(), $now->copy()->endOfWeek()->toDateString()])->count()),
    'month'     => number_format(VisitorsLog::whereMonth('created_at', '=', date('m'))->whereYear('created_at', '=', date('Y'))->count()),
    'year'      => number_format(VisitorsLog::whereYear('created_at', '=', date('Y'))->count()),
  ];
}

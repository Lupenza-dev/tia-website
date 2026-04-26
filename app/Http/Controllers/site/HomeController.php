<?php namespace App\Http\Controllers\site;

use App\Models\Announcement;
use App\Models\Administration;
use App\Models\Campus;
use App\Models\Course;
use App\Models\Gallery;
use App\Models\HowDoI;
use App\Models\Events;
use App\Models\Documents;
use App\Models\DocumentCategory;
use App\Models\Quotation;
use App\Models\Service;
use App\Models\PressRelease;
use App\Models\Notice;
use App\Models\News;
use App\Models\Product;
use App\Models\ShortCourse;
use App\Models\WelcomeNote;
use App\Models\Mission;
use App\Models\Vision;
use App\Models\Value;
use App\Models\Sponsor;
use App\Models\Slider;
use App\Models\Project;
use App\Models\OnlineService;
use App\Models\SalesPoint;
use App\Models\ProductCategory;
use App\Models\Faq;
use App\Models\Passenger;
use Carbon\Carbon;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cookie;

class HomeController extends BaseSiteController
{

    public function index()
    {
        $dg = Administration::where('position', '=', 1)->first();
        // dd($dg);
        // $other_executives = Administration::whereIn('position',[2,3,4])->orderBy('position','ASC')->get();

        //distinct()->whereNotNull('meta_value')->get(['meta_value'])
        
        // $welcomeNote = WelcomeNote::first();

        $announcements = Announcement::where('active',1)->orderBy('id', 'DESC')->take(4)->get();

        $events = Events::where('active',1)->orderBy('event_date', 'DESC')->take(4)->get();

        $news_list = News::where('active',1)->orderBy('id', 'DESC')->take(4)->get();

        // $sales_points = SalesPoint::where('active',1)->orderBy('id', 'DESC')->take(8)->get();

        // $product_categories = ProductCategory::where('active',1)->orderBy('id', 'DESC')->take(6)->get();

        // $faqs = Faq::where('active',1)->orderBy('id', 'DESC')->take(5)->get();

        $publications = Documents::where('active',1)->orderBy('id', 'DESC')->take(5)->get();

        //$sponsors = Sponsor::orderBy('id', 'DESC')->limit(4)->get();
        
        // $services = Service::where('active',1)->orderBy('id', 'DESC')->limit(3)->get();

        $online_services = OnlineService::where('active',1)->orderBy('id', 'DESC')->limit(7)->get();

        // $press_releases = PressRelease::where('active',1)->orderBy('id', 'DESC')->limit(4)->get();

        // $notices = Notice::where('active',1)->orderBy('id', 'DESC')->limit(6)->get();

        $howdois = HowDoI::where('active',1)->orderBy('id', 'DESC')->limit(5)->get();
        
        // $passengers = Passenger::where('active',1)->orderBy('id', 'DESC')->limit(5)->get();
        
        $slideshow = Gallery::where('featured', 1)->where('type', '=', 'photos')->where('status', 1)->first();
        // dd($slideshow); 
        // $videoshow = Gallery::where('featur00ed', 1)->where('type', '=', 'videos')->first();
        $campuses = Campus::orderBy('id', 'DESC')->limit(7)->get();

        if ($slideshow == null) {
            $slideshow = [];
        } else {
            $slideshow = $slideshow->photos()->orderBy('id', 'DESC')->where('status', 1)->limit(10)->get();
        }

        $quotations = Quotation::where('active',1)->orderBy('id', 'DESC')->limit(5)->get();
        $short_courses = ShortCourse::where('start_date','>',Carbon::now())->orderBy('id', 'ASC')->limit(7)->get();

        // if ($videoshow == null) {
        //     $videoshow = [];
        // } else {
        //     $videoshow = $videoshow->videos()->orderBy('id', 'DESC')->limit(1)->get();
        // }

        //$announcements = Announcement::orderBy('id', 'DESC')->where('active', 1)->limit(8)->get();

        // $services = Service::where('active', true)->with('documentCategories')
        // ->whereHas('documentCategories',function($q){
        //   $q->where('featured', true);
        // })->take(4)->get();

        // echo $publicationCategory;exit;
// dd()
        return view("site/home", compact(
            'dg',
            'news_list',
            'slideshow',
            'events',
            'howdois',
            'online_services',
            'campuses',
            'quotations',
            'publications',
            'short_courses'
        ));
    }
}

<?php

namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Partner;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Image;
use Validator;

class PartnerController extends BaseController {


    public function index()
    {

        $partner_lists = Partner::orderBy('id', 'DESC')->paginate(1000);
        $select = Partner::orderBy('id', 'ASC')->pluck('title_en','id')->toArray();
        return view('cms.partners.index', compact('partner_lists','select'));
    }


    public function create()
    {
        return view('cms.partners.create');
    }

    public function store(Request $request)
    {

        $request->validate(Partner::$rules);

        $inputs = $request->except('photo_url');

        $image = $request->get('photo_url'); // base64 image
        $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
        $type = explode(';', $image)[0];
        $type = explode('/', $type)[1]; // png or jpg etc

        $image = str_replace('data:image/'.$type.';base64,', '', $image);
        $image = str_replace(' ', '+', $image);
        $imageName = md5(date('Ymdhis')).'.'.$type;

        $path = public_path().'/uploads/partners/';

        if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

        \File::put($path.$imageName, base64_decode($image));

        $inputs['photo_url'] = $imageName;

        $news= auth()->user()->partners()->save(new Partner($inputs));

        if($news){
          return back()->with('status', 'success');
        }
    }


    public function edit($id)
    {
        $partner = Partner::find($id);
        $select = Partner::orderBy('id', 'ASC')->pluck('title_en','id')->toArray();
        return view("cms.partners.edit", compact('partner','select'));
    }


    public function update(Request $request, $id)
    {
        $partner = Partner::find($id);

        $request->validate(Partner::$rules_update);

        $inputs = $request->except('photo_url');

        if($request->get('photo_url')){

            if(is_file(public_path().'/uploads/partners/'.$partner->photo_url) and file_exists(public_path().'/uploads/partners/'.$partner->photo_url)){
                unlink(public_path().'/uploads/partners/'.$partner->photo_url);
            }

            $image = $request->get('photo_url'); // base64 image
            $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
            $type = explode(';', $image)[0];
            $type = explode('/', $type)[1]; // png or jpg etc

            $image = str_replace('data:image/'.$type.';base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = md5(date('Ymdhis')).'.'.$type;

            $path = public_path().'/uploads/partners/';

            if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

            \File::put($path.$imageName, base64_decode($image));

            $inputs['photo_url'] = $imageName;

        }

        $inputs['user_id'] = auth()->user()->id;

        $partner->update($inputs);

        return back()->with('status', 'success');

    }

    public function destroy($id)
    {

        $partner = Partner::find($id);

        if(is_file(public_path().'/uploads/partners/'.$partner->photo_url) and file_exists(public_path().'/uploads/partners/'.$partner->photo_url)){
            unlink(public_path().'/uploads/partners/'.$partner->photo_url);
        }

        Partner::destroy($id);

        return back()->with('status', 'success');
    }

}

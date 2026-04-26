<?php

namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Quotation;
use Illuminate\Http\Request;
use App\Models\News;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Image;
use Validator;

class QuotationController extends BaseController {


    public function index()
    {

        $quotation_lists = Quotation::orderBy('id', 'DESC')->paginate(1000);
        $select = Quotation::orderBy('id', 'ASC')->pluck('title_en','id')->toArray();
        return view('cms.quotations.index', compact('quotation_lists','select'));
    }


    public function create()
    {
        return view('cms.quotations.create');
    }

    public function store(Request $request)
    {

        $request->validate(Quotation::$rules);

        $name = $request->input('active', '1');

        $inputs = $request->except('photo_url');

        $image = $request->get('photo_url'); // base64 image
        $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
        $type = explode(';', $image)[0];
        $type = explode('/', $type)[1]; // png or jpg etc

        $image = str_replace('data:image/'.$type.';base64,', '', $image);
        $image = str_replace(' ', '+', $image);
        $imageName = md5(date('Ymdhis')).'.'.$type;

        $path = public_path().'/uploads/quotations/';

        if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

        \File::put($path.$imageName, base64_decode($image));

        $inputs['photo_url'] = $imageName;

        $news= auth()->user()->quotations()->save(new Quotation($inputs));

        if($news){
          return back()->with('status', 'success');
        }
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $quotation = Quotation::find($id);
        $select = Quotation::orderBy('id', 'ASC')->pluck('title_en','id')->toArray();
        return view("cms.quotations.edit", compact('quotation','select'));
    }


    public function update(Request $request, $id)
    {
        $quotation = Quotation::find($id);

        $request->validate(Quotation::$rules_update);

        $inputs = $request->except('photo_url');

        $img = $request->get('photo_url');

        if($request->get('photo_url')){

            if(is_file(public_path().'/uploads/quotations/'.$quotation->photo_url) and file_exists(public_path().'/uploads/quotations/'.$quotation->photo_url)){
                unlink(public_path().'/uploads/quotations/'.$quotation->photo_url);
            }

            $image = $request->get('photo_url'); // base64 image
            $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
            $type = explode(';', $image)[0];
            $type = explode('/', $type)[1]; // png or jpg etc

            $image = str_replace('data:image/'.$type.';base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = md5(date('Ymdhis')).'.'.$type;

            $path = public_path().'/uploads/quotations/';

            if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

            \File::put($path.$imageName, base64_decode($image));

            $inputs['photo_url'] = $imageName;

        }

        $inputs['user_id'] = auth()->user()->id;

        $quotation->update($inputs);

        return back()->with('status', 'success');

    }

    public function destroy($id)
    {

        $quotation = Quotation::find($id);

        if(is_file(public_path().'/uploads/quotations/'.$quotation->photo_url) and file_exists(public_path().'/uploads/quotations/'.$quotation->photo_url)){
            unlink(public_path().'/uploads/quotations/'.$quotation->photo_url);
        }

        Quotation::destroy($id);

        return back()->with('status', 'success');
    }

}

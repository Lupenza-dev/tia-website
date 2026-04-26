<?php namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\CustomerCenter;

use Response;
use Validator;
use Redirect;

class CustomerCentersController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $links = CustomerCenter::orderBy('id', 'DESC')->get();
        return view('cms.customer_centers.index', compact('links'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.customer_centers.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(CustomerCenter::$rules);

        $inputs = $request->all();

        if($request->link == 0) {
            $inputs['url'] = $request->url_external;
        }else{
            $inputs['url_external'] = NULL;
        }

        // dd($inputs);

        $link = CustomerCenter::create($inputs);

        if($link){ 
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

        $link = CustomerCenter::find($id);      
        
        return view("cms.customer_centers.edit", compact('link'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate(CustomerCenter::$rules);

        $link = CustomerCenter::find($id);

        $inputs = $request->all();

        if($request->link == 0) {
            $inputs['url'] = $request->url_external;
        }else{
            $inputs['url_external'] = NULL;
        }

        // dd($inputs);

        $link->update($inputs);

        return redirect('cms/customer_centers');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $link = CustomerCenter::destroy($id);

        return redirect('cms/customer_centers');
    }

}

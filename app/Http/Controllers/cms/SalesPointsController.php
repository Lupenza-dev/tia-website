<?php namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\SalesPoint;
use DB;

class SalesPointsController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $salespoints = SalesPoint::orderBy('id', 'DESC')->get();
        return view('cms.sales_points.index', compact('salespoints'));
    }

    public function show($id)
    {
        $salespoint = SalesPoint::find($id);
        return view('cms.sales_points.show', compact('salespoint'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.sales_points.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(SalesPoint::$rules);

        $data = $request->all();

        $category = SalesPoint::create($data);

        return redirect()->route('cms.sales_points.index')->with('status', 'success');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $salespoint = SalesPoint::find($id);
        return view("cms.sales_points.edit", compact('salespoint'));
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
        $request->validate(SalesPoint::$rules);

        $salespoint = SalesPoint::find($id);

        $data = $request->all();

        $salespoint->update($data);

        return back()->with('status', 'success');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        SalesPoint::destroy($id);
        return back()->with('status', 'success');
    }

}

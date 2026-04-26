<?php
namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Campus;
use Illuminate\Http\Request;
use App\Models\Administration;
use App\Models\AdministrationCategories;
use App\Models\AdministrationCategoriesMembers;
use App\Models\Translation;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Response;
use Validator;
use Redirect;
use DB;

class CampusController extends BaseController {

    	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $campuses = Campus::orderBy('id', 'DESC')->paginate(1000);
        return view('cms.campuses.index', compact('campuses'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.campuses.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(Campus::$rules);

        $data = $request->all();
        $campus = Campus::create($data);

        if($campus){
            return redirect('cms/campuses');
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
        $campus = Campus::find($id);
        return view("cms.campuses.edit", compact('campus'));
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
    	$campus = Campus::find($id);

    	$request->validate(Campus::$rules);

        $data = $request->all();

        $campus->update($data);

        return redirect('cms/campuses');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    	$campus = Campus::find($id);

		Campus::destroy($id);

        return redirect('cms/campuses');
    }


}
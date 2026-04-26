<?php namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Campus;
use Illuminate\Http\Request;
use App\Models\Announcement;

class CampusController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$campuses = Campus::orderBy('id', 'DESC')->paginate(10);
        return view('site.campuses.index', compact('campuses'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$campus = Campus::findBySlug($slug);
		$campuses = Campus::orderBy('id', 'DESC')->paginate(10);

		//if  content not found
		if(!$campus) return view('site.default-not-found');

		return view('site.campuses.show', compact('campus', 'campuses'));
	}

	

}

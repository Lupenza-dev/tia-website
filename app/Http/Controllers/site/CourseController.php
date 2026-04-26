<?php
namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Models\Course;
use App\Models\News;
use App\Models\Quotation;
use Cookie;

class CourseController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$courses = Course::orderBy('id', 'DESC')->where('active',1)->paginate(10);
        return view('site.courses.index', compact('courses'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$quotation = Quotation::findBySlug($slug);

		//if  content not found
		if(!$quotation) return view('site.default-not-found');

		return view('site.quotations.show', compact('quotation'));
	}



}

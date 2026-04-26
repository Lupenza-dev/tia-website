<?php
namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Models\Course;
use App\Models\CourseDetail;
use App\Models\News;
use App\Models\Quotation;
use App\Models\LongCourse;
use Cookie;

class LongCourseController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$long_courses = LongCourse::orderBy('id', 'DESC')->paginate(10);
        return view('site.long_course.index', compact('long_courses'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$long_course = LongCourse::where("slug",$slug)->first();
		if(!empty($long_course)){
			//$long_course = CourseDetail::where('course_detail_id', $long_course->id)->where('course_type', 1)->first();
			//if(empty($long_course)) return view('site.default-not-found');
			return view('site.long_course.show', compact('long_course'));
		}
	}



}

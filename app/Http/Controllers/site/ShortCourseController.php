<?php
namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Models\Course;
use App\Models\CourseDetail;
use App\Models\News;
use App\Models\Quotation;
use App\Models\ShortCourse;
use Cookie;
use Carbon\Carbon;
use DB;

class ShortCourseController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$short_courses = ShortCourse::where('start_date','>',Carbon::now())->orderBy('start_date', 'ASC')->paginate(10);
		$months = DB::table('short_courses')->select(DB::raw('count(id) as `data`'), DB::raw("DATE_FORMAT(start_date, '%m') count"),  DB::raw('YEAR(start_date) year, MONTH(start_date) month'))
		->where('start_date','>',Carbon::now())
		->groupby('month')
		->get();
		
		
		
        return view('site.short_course.index', compact('short_courses','months'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$short_course = ShortCourse::where("slug", $slug)->first();
		if(!empty($short_course)){
			$short_course = CourseDetail::where('course_detail_id', $short_course->id)->where('course_type', 2)->first();
			if(empty($short_course)) return view('site.default-not-found');
			return view('site.short_course.show', compact('short_course'));
		}
	}



}

<?php namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\CourseCategory;
use App\Models\CourseDetail;
use App\Models\ShortCourse;
use Illuminate\Http\Request;
use App\Models\QuickLink;

use Illuminate\Support\Facades\DB;
use Response;
use Validator;
use Redirect;

class ShortCourseController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $courses = ShortCourse::orderBy('id', 'DESC')->get();
        return view('cms.short_courses.index', compact('courses'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $course_categories = CourseCategory::all();
        return view('cms.short_courses.create', compact('course_categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(ShortCourse::$rules);
        $request->validate(CourseDetail::$rules);
        return DB::transaction(function () use ($request) {
            $inputs = $request->all();
            $short_course = ShortCourse::create($this->shortCourseArray($inputs));
            if (!empty($short_course)) {
                $inputs['course_detail_id'] = $short_course->id;
                $course_details = CourseDetail::create($this->courseDetailArray($inputs));
                if (!empty($course_details))
                    return back()->with('status', 'success');
            }
        });
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $short_course = ShortCourse::where('short_courses.id',$id)
        ->select('*', 'short_courses.id')
        ->where('course_type', 2)
        ->join('course_details', 'course_details.course_detail_id', '=', 'short_courses.id')->first();
        return view("cms.short_courses.edit", compact('short_course'));
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
        $request->validate(ShortCourse::$rules);
        $request->validate(CourseDetail::$rules);

        return DB::transaction(function () use ($request, $id) {
            $inputs = $request->all();
            $short_course = ShortCourse::updateOrCreate(["id" => $id],$this->shortCourseArray($inputs));
            if(!empty($short_course)){
                $inputs['course_detail_id'] = $short_course->id;
                $course_details = CourseDetail::updateOrCreate([
                    "course_detail_id" => $inputs['course_detail_id'], 
                    "course_type" => 1
                ],$this->courseDetailArray($inputs));
            if($course_details) return redirect('cms/short_courses')->with('status', 'success');
            }
        });

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $short_course = ShortCourse::destroy($id);
        if($short_course){
            $short_course = CourseDetail::where('course_detail_id',$id)->where('course_type', 1)->delete(); 
            return redirect('cms/short_courses');
        }
    }

    public function shortCourseArray($inputs){
        return [
            "title_sw" => $inputs["title_sw"],
            "title_en" => $inputs["title_en"],
            "category_en" => $inputs["category_en"],
            "category_sw" => $inputs["category_sw"],
            "start_date" => $inputs["start_date"],
            "end_date" => $inputs["end_date"],
            "venue_en" => $inputs["venue_en"],
            "venue_sw" => $inputs["venue_sw"],
        ];
    }

    public function courseDetailArray($inputs){
        return [
            "description_sw" => $inputs["description_sw"],
            "description_en" => $inputs["description_en"],
            "target_audience_sw" => $inputs["target_audience_sw"],
            "target_audience_en" => $inputs["target_audience_en"],
            "course_overview_sw" => $inputs["course_overview_sw"],
            "course_overview_en" => $inputs["course_overview_en"],
            "expected_benefit_sw" => $inputs["expected_benefit_sw"],
            "expected_benefit_en" => $inputs["expected_benefit_en"],
            "course_coodinator_sw" => $inputs["course_coodinator_sw"],
            "course_coodinator_en" => $inputs["course_coodinator_en"],
            "course_detail_id" => $inputs["course_detail_id"],
            "course_type" => 2 //Short course
        ];
    }

}

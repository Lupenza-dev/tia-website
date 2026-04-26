<?php namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\CourseCategory;
use App\Models\CourseDetail;
use App\Models\LongCourse;
use Illuminate\Http\Request;
use App\Models\QuickLink;

use Illuminate\Support\Facades\DB;
use Response;
use Validator;
use Redirect;

class LongCourseController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // if your want to use quicklink categories instead
        //return redirect('cms/quicklink-categories');

        $courses = LongCourse::orderBy('id', 'DESC')->get();
        return view('cms.long_courses.index', compact('courses'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $course_categories = CourseCategory::all();
        return view('cms.long_courses.create', compact('course_categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate(LongCourse::$rules);
       

        return DB::transaction(function () use ($request) {
            $inputs = $request->all();

            $long_course = LongCourse::create($this->LongCourseArray($inputs));
        
                if (!empty($long_course))
                    return back()->with('status', 'success');
           
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

        $long_course = LongCourse::find($id);
       // ->select('*', 'long_courses.id')
       // ->where('course_type', 1);
       // ->join('course_details', 'course_details.course_detail_id', '=', 'long_courses.id')->first();
        return view("cms.long_courses.edit", compact('long_course'));
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
        $request->validate(LongCourse::$rules);
       // $request->validate(CourseDetail::$rules);

        return DB::transaction(function () use ($request, $id) {
            $inputs = $request->all();
            $long_course = LongCourse::updateOrCreate(["id" => $id],$this->LongCourseArray($inputs));
            if(!empty($long_course)){
               // $inputs['course_detail_id'] = $long_course->id;

                // $course_details = CourseDetail::updateOrCreate([
                //     "course_detail_id" => $inputs['course_detail_id'], 
                //     "course_type" => 2
                // ],$this->courseDetailArray($inputs));

            if($long_course) return redirect('cms/long_courses')->with('status', 'success');
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
        $long_course = LongCourse::destroy($id);
        // if($long_course){
        //     $long_course = CourseDetail::where('course_detail_id',$id)->delete(); 
        //     return redirect('cms/long_courses');
        // }
    }

    public function LongCourseArray($inputs){
        return [
            "title_sw" => $inputs["title_sw"],
            "title_en" => $inputs["title_en"],
            "entry_qualification_en" => $inputs["entry_qualification_en"],
            "entry_qualification_sw" => $inputs["entry_qualification_sw"],
            "fee_en" => $inputs["fee_en"],
            "fee_sw" => $inputs["fee_sw"],
            "campus_en" => $inputs["campus_en"],
            "campus_sw" => $inputs["campus_sw"],
            "program_cordinator_en" => $inputs["program_cordinator_en"],
            "program_cordinator_sw" => $inputs["program_cordinator_sw"],

            "description_sw" => $inputs["description_sw"],
            "description_en" => $inputs["description_en"],
            "program_structure_sw" => $inputs["program_structure_sw"],
            "program_structure_en" => $inputs["program_structure_en"],
            "fee_structure_en" => $inputs["fee_structure_en"],
            "fee_structure_sw" => $inputs["fee_structure_sw"],

            "program_outcomes_sw" => $inputs["program_outcomes_sw"],
            "program_outcomes_en" => $inputs["program_outcomes_en"],
            "assesment_en" => $inputs["assesment_en"],
            "assesment_sw" => $inputs["assesment_sw"],
            
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
            "course_type" => 1 //long course
        ];
    }

}

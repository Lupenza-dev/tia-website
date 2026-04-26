<?php namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Course;
use App\Models\CourseCategory;
use Illuminate\Http\Request;
use App\Models\QuickLink;

use Response;
use Validator;
use Redirect;

class CourseController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // if your want to use quicklink categories instead
        //return redirect('cms/quicklink-categories');

        $courses = Course::orderBy('id', 'DESC')->get();
        $course_categories = CourseCategory::pluck('name_en');
        return view('cms.courses.index', compact('courses', 'course_categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $course_categories = CourseCategory::all();
        return view('cms.courses.create', compact('course_categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(Course::$rules);

        $inputs = $request->all();
        $course = Course::create($inputs);

        if($course){ 
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

        $course = Course::find($id);      
        
        return view("cms.courses.edit", compact('course'));
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
        $request->validate(Course::$rules);

        $course = Course::find($id);

        $inputs = $request->all();

        $course->update($inputs);

        //if you want to categories instead
        //return redirect('cms/quicklink-categories/'.$link->category->slug); 

        return redirect('cms/courses');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $course = Course::destroy($id);

        return redirect('cms/courses');
    }

}

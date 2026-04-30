<?php

namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Program;
use App\Models\ProgramCategory;
use App\Models\ProgramLevel;
use App\Models\Department;
use App\Models\Campus;
use Illuminate\Http\Request;

class ProgramController extends BaseController {

    public function index()
    {
        $program_lists = Program::orderBy('id', 'DESC')->paginate(1000);
        return view('cms.programs.index', compact('program_lists'));
    }

    public function create()
    {
        $categories = ProgramCategory::where('is_active', 1)->pluck('name_en', 'id')->toArray();
        $levels = ProgramLevel::where('is_active', 1)->pluck('name_en', 'id')->toArray();
        $departments = Department::where('is_active', 1)->pluck('name_en', 'id')->toArray();
        $campuses = Campus::pluck('title_en', 'id')->toArray();
        return view('cms.programs.create', compact('categories', 'levels', 'departments', 'campuses'));
    }

    public function store(Request $request)
    {
        $request->validate(Program::$rules);

        $inputs = $request->except('campuses');
        $inputs['campuses'] = implode(',', $request->get('campuses', []));
        $inputs['user_id'] = auth()->user()->id;

        $program = auth()->user()->programs()->save(new Program($inputs));

        if($program){
            return back()->with('status', 'success');
        }
    }

    public function edit($id)
    {
        $program = Program::find($id);
        $categories = ProgramCategory::where('is_active', 1)->pluck('name_en', 'id')->toArray();
        $levels = ProgramLevel::where('is_active', 1)->pluck('name_en', 'id')->toArray();
        $departments = Department::where('is_active', 1)->pluck('name_en', 'id')->toArray();
        $campuses = Campus::pluck('title_en', 'id')->toArray();
        return view("cms.programs.edit", compact('program', 'categories', 'levels', 'departments', 'campuses'));
    }

    public function update(Request $request, $id)
    {
        $program = Program::find($id);

        $request->validate(str_replace('{id}', $id, Program::$rules_update));

        $inputs = $request->except('campuses');
        $inputs['campuses'] = implode(',', $request->get('campuses', []));
        $inputs['user_id'] = auth()->user()->id;

        $program->update($inputs);

        return back()->with('status', 'success');
    }

    public function destroy($id)
    {
        Program::destroy($id);
        return back()->with('status', 'success');
    }

}

<?php

namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Department;
use Illuminate\Http\Request;

class DepartmentController extends BaseController {

    public function index()
    {
        $departments = Department::orderBy('id', 'DESC')->paginate(1000);
        return view('cms.departments.index', compact('departments'));
    }

    public function create()
    {
        return view('cms.departments.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name_en' => 'required|max:191',
            'name_sw' => 'required|max:191',
        ]);

        $inputs = $request->all();
        Department::create($inputs);

        return back()->with('status', 'success');
    }

    public function edit($id)
    {
        $department = Department::find($id);
        return view("cms.departments.edit", compact('department'));
    }

    public function update(Request $request, $id)
    {
        $department = Department::find($id);

        $request->validate([
            'name_en' => 'required|max:191',
            'name_sw' => 'required|max:191',
        ]);

        $department->update($request->all());

        return back()->with('status', 'success');
    }

    public function destroy($id)
    {
        Department::destroy($id);
        return back()->with('status', 'success');
    }

}

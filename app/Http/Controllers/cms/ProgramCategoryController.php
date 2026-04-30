<?php

namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\ProgramCategory;
use Illuminate\Http\Request;

class ProgramCategoryController extends BaseController {

    public function index()
    {
        $categories = ProgramCategory::orderBy('id', 'DESC')->paginate(1000);
        return view('cms.program_categories.index', compact('categories'));
    }

    public function create()
    {
        return view('cms.program_categories.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name_en' => 'required|max:191',
            'name_sw' => 'required|max:191',
        ]);

        $inputs = $request->all();
        ProgramCategory::create($inputs);

        return back()->with('status', 'success');
    }

    public function edit($id)
    {
        $category = ProgramCategory::find($id);
        return view("cms.program_categories.edit", compact('category'));
    }

    public function update(Request $request, $id)
    {
        $category = ProgramCategory::find($id);

        $request->validate([
            'name_en' => 'required|max:191',
            'name_sw' => 'required|max:191',
        ]);

        $category->update($request->all());

        return back()->with('status', 'success');
    }

    public function destroy($id)
    {
        ProgramCategory::destroy($id);
        return back()->with('status', 'success');
    }

}

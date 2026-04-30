<?php

namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\ProgramLevel;
use Illuminate\Http\Request;

class ProgramLevelController extends BaseController {

    public function index()
    {
        $levels = ProgramLevel::orderBy('id', 'DESC')->paginate(1000);
        return view('cms.program_level.index', compact('levels'));
    }

    public function create()
    {
        return view('cms.program_level.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name_en' => 'required|max:191',
            'name_sw' => 'required|max:191',
        ]);

        $inputs = $request->all();
        ProgramLevel::create($inputs);

        return back()->with('status', 'success');
    }

    public function edit($id)
    {
        $level = ProgramLevel::find($id);
        return view("cms.program_level.edit", compact('level'));
    }

    public function update(Request $request, $id)
    {
        $level = ProgramLevel::find($id);

        $request->validate([
            'name_en' => 'required|max:191',
            'name_sw' => 'required|max:191',
        ]);

        $level->update($request->all());

        return back()->with('status', 'success');
    }

    public function destroy($id)
    {
        ProgramLevel::destroy($id);
        return back()->with('status', 'success');
    }

}

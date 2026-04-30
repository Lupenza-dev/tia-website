<?php

namespace App\Models;

use App\Traits\Multilingual;
use App\Traits\TrackableInterface;
use App\Traits\TrackableTrait;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use Illuminate\Database\Eloquent\Model;

class Program extends Model implements TrackableInterface
{
    use Sluggable, TrackableTrait;
    use SluggableScopeHelpers, Multilingual;

    protected $guarded = [];

    protected $translatableAttributes = ['name'];

    public static $rules = [
        'name_en' => 'required|max:191|unique:programs,name_en',
        'name_sw' => 'required|max:191|unique:programs,name_sw',
        'campuses' => 'required|max:191',
        'fee' => 'required|integer',
        'program_code' => 'required|max:191',
        'program_category_id' => 'required|exists:program_categories,id',
        'program_level_id' => 'required|exists:program_levels,id',
        'department_id' => 'required|exists:departments,id',
        'is_active' => 'required',
    ];

    public static $rules_update = [
        'name_en' => 'required|max:191|unique:programs,name_en,{id}',
        'name_sw' => 'required|max:191|unique:programs,name_sw,{id}',
        'campuses' => 'required|max:191',
        'fee' => 'required|integer',
        'program_code' => 'required|max:191',
        'program_category_id' => 'required|exists:program_categories,id',
        'program_level_id' => 'required|exists:program_levels,id',
        'department_id' => 'required|exists:departments,id',
    ];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'name_en'
            ]
        ];
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function programCategory()
    {
        return $this->belongsTo(ProgramCategory::class);
    }

    public function programLevel()
    {
        return $this->belongsTo(ProgramLevel::class);
    }

    public function department()
    {
        return $this->belongsTo(Department::class);
    }
}

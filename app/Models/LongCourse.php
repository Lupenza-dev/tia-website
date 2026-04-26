<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\TrackableTrait;
use App\Traits\TrackableInterface;
use App\Traits\Multilingual;
use Cviebrock\EloquentSluggable\Sluggable;

class LongCourse extends Model implements  TrackableInterface{

	use Sluggable, TrackableTrait,Multilingual,SluggableScopeHelpers;

	protected $guarded=[];

	protected $translatableAttributes = ['title',
	'entry_qualification','fee','campus',
	'program_structure','fee_structure','program_outcomes','assesment',
	'program_cordinator','description'];

	public static $rules = [
		'title_en'	=> 'required',
		'title_sw'	=> 'required',
		'entry_qualification_en'	=> 'required',
		'entry_qualification_sw'	=> 'required',
		'fee_en'	=> 'required',
		'fee_sw'	=> 'required',
		
		'campus_en'	=> 'required',
		'campus_sw'	=> 'required',
		// 'active'	=> 'required',

		'program_cordinator_en'	=> 'required',
		'program_cordinator_sw'	=> 'required',
		'description_sw'	=> 'required',
		'description_en'	=> 'required',

		'program_structure_sw'	=> 'required',
		'program_structure_en'	=> 'required',
		
		'fee_structure_en'	=> 'required',
		'fee_structure_sw'	=> 'required',

		'program_outcomes_sw'	=> 'required',
		'program_outcomes_en'	=> 'required',

		'assesment_en'	=> 'required',
		'assesment_sw'	=> 'required',
	];

	public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }
	public function courseDetail(){
		return $this->belongsTo('App\Models\CourseDetail', 'course_detail_id');
	}


}
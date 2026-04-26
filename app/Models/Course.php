<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Traits\TrackableTrait;
use App\Traits\TrackableInterface;
use App\Traits\Multilingual;

class Course extends Model implements  TrackableInterface{

	use TrackableTrait,Multilingual;

	protected $guarded=[];

	protected $translatableAttributes = ['title_en', 'title_sw','sector_en','sector_sw','programme_en','programme_sw','start_date','end_date','venue_en','venue_sw'];

	public static $rules = [
		'title_en'	=> 'required|max:191',
		'title_sw'	=> 'required|max:191',
		'sector_en'	=> 'required|max:255',
		'sector_sw'	=> 'required|max:255',
		'programme_en'	=> 'required|max:255',
		'programme_sw'	=> 'required|max:255',
		'start_date'	=> 'required|before:end_date',
		'end_date'	=> 'required|after:start_date',
		'venue_en'	=> 'required|max:191',
		'venue_sw'	=> 'required|max:191',
		// 'active'	=> 'required|max:191',
	];

	public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }

	public function courseCategory(){
		return $this->belongsTo('App\Models\CourseCategory', 'course_category_id');
	}


}
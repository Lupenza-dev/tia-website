<?php namespace App\Models;

use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use App\Traits\TrackableTrait;
use App\Traits\TrackableInterface;
use App\Traits\Multilingual;


class ShortCourse extends Model implements  TrackableInterface{

	use Sluggable, TrackableTrait,Multilingual,SluggableScopeHelpers;

	protected $guarded=[];

	protected $translatableAttributes = ['title', 'category','venue','start_date','end_date',];

	public static $rules = [
		'title_en'	=> 'required|max:191',
		'title_sw'	=> 'required|max:191',
		'category_en'	=> 'required|max:255',
		'category_sw'	=> 'required|max:255',
		'venue_en'	=> 'required|max:255',
		'venue_sw'	=> 'required|max:255',
		'start_date'	=> 'required|before:end_date',
		'end_date'	=> 'required|after:start_date',
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

	public function courseDetail(){
		return $this->belongsTo('App\Models\CourseDetail', 'course_detail_id');
	}


}
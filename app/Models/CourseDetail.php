<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\TrackableTrait;
use App\Traits\Multilingual;
use App\Traits\TrackableInterface;

class CourseDetail extends Model implements TrackableInterface {

	use TrackableTrait;
	use Sluggable,SluggableScopeHelpers,Multilingual;

	protected $guarded=[];

	protected $translatableAttributes = ['description','target_audience', 'course_offered','expected_benefit', 'course_coodinator','contacts'];

	public static $rules = [
		'description_en' => 'required',
		'description_sw' => 'required',
		'target_audience_en'   => 'required',
        'target_audience_sw'   => 'required',
		'course_overview_en' => 'required',
        'course_overview_sw' => 'required',
		'expected_benefit_en' => 'required',
        'expected_benefit_sw' => 'required',
		'course_coodinator_en' => 'required',
        'course_coodinator_sw' => 'required',
		// 'contacts_en' => 'required',
        // 'contacts_sw' => 'required',
	];

	public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }


	// Don't forget to fill this array
	//protected $fillable = ['name', 'content', 'active','slug'];


}

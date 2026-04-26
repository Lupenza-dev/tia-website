<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\TrackableTrait;
use App\Traits\Multilingual;
use App\Traits\TrackableInterface;

class Campus extends Model implements TrackableInterface {

	use TrackableTrait;
	use Sluggable,SluggableScopeHelpers,Multilingual;

	protected $guarded=[];

	protected $translatableAttributes = ['title','particulars', 'course_offered','student_services', 'facilities','contacts'];

	public static $rules = [
		'title_en' => 'required|max:255',
		'title_sw' => 'required|max:255',
		'particulars_en'   => 'required',
        'particulars_sw'   => 'required',
		'course_offered_en' => 'required',
        'course_offered_sw' => 'required',
		// 'student_services_en' => 'required',
        // 'student_services_sw' => 'required',
		// 'facilities_en' => 'required',
        // 'facilities_sw' => 'required',
		// 'contacts_en' => 'required',
        // 'contacts_sw' => 'required',
		// 'active' => 'required'
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

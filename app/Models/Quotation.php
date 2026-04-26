<?php
namespace App\Models;

use App\Traits\Multilingual;
use App\Traits\TrackableInterface;
use App\Traits\TrackableTrait;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use Illuminate\Database\Eloquent\Model;

class Quotation extends Model implements TrackableInterface{

	use Sluggable,TrackableTrait;
	use SluggableScopeHelpers,Multilingual;

	protected $guarded=[];


    protected $translatableAttributes = ['title', 'content','name'];

    // Add your validation rules here
    public static $rules = [
         'title_en' => 'required|max:191',
         'title_sw' => 'required|max:191',
         'name_en' => 'required|max:191',
         'name_sw' => 'required|max:191',
         'content_en' => 'required',
         'content_sw' => 'required',
         'active' => 'required',
         'photo_url' => 'required'
    ];

    public static $rules_update = [
         'title_en' => 'required|max:191',
         'title_sw' => 'required|max:191',
         'name_en' => 'required|max:191',
         'name_sw' => 'required|max:191',
         'content_en' => 'required',
         'content_sw' => 'required',
         'active' => 'required',
    ];

	//protected static $logUnguarded = true;

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }




	public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}

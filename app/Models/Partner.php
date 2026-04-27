<?php
namespace App\Models;

use App\Traits\Multilingual;
use App\Traits\TrackableInterface;
use App\Traits\TrackableTrait;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use Illuminate\Database\Eloquent\Model;

class Partner extends Model implements TrackableInterface{

	use Sluggable,TrackableTrait;
	use SluggableScopeHelpers,Multilingual;

	protected $guarded=[];

    protected $translatableAttributes = ['title'];

    public static $rules = [
         'title_en' => 'required|max:191',
         'title_sw' => 'required|max:191',
         'active' => 'required',
         'photo_url' => 'required'
    ];

    public static $rules_update = [
         'title_en' => 'required|max:191',
         'title_sw' => 'required|max:191',
         'active' => 'required',
    ];

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

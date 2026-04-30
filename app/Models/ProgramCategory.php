<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProgramCategory extends Model
{
    use HasFactory;

    protected $table = 'program_categories';

    protected $fillable = ['name_en', 'name_sw', 'is_active'];
}

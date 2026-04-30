<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProgramLevel extends Model
{
    use HasFactory;

    protected $table = 'program_levels';

    protected $fillable = ['name_en', 'name_sw', 'is_active'];
}

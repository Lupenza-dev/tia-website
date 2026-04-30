<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory;

    protected $fillable = ['name_en', 'name_sw', 'dept_code', 'is_active'];

    public function programs()
    {
        return $this->hasMany(Program::class);
    }
}

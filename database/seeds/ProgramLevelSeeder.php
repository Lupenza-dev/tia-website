<?php

use Illuminate\Database\Seeder;

class ProgramLevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            ['name_en' => 'Certificate', 'name_sw' => 'Cheti', 'is_active' => true],
            ['name_en' => 'Diploma', 'name_sw' => 'Stashahada', 'is_active' => true],
            ['name_en' => 'Undergraduate', 'name_sw' => 'Shahada ya Kwanza', 'is_active' => true],
            ['name_en' => 'Postgraduate', 'name_sw' => 'Shahada za Juu', 'is_active' => true],
            ['name_en' => 'Master', 'name_sw' => 'Uzamili', 'is_active' => true],
            ['name_en' => 'PhD', 'name_sw' => 'Uzamifu', 'is_active' => true],
        ];

        foreach ($categories as $category) {
            \App\Models\ProgramLevel::create($category);
        }
    }
}

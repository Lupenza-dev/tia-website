<?php

use Illuminate\Database\Seeder;

class ProgramCategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            ['name_en' => 'Review Classes', 'name_sw' => 'Review Classes', 'is_active' => true],
            ['name_en' => 'Short Courses', 'name_sw' => 'Short Courses', 'is_active' => true],
            ['name_en' => 'Full Course', 'name_sw' => 'Full Course', 'is_active' => true],
        ];

        foreach ($categories as $category) {
            \App\Models\ProgramCategory::create($category);
        }
    }
}

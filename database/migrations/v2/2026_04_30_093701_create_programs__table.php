<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('programs', function (Blueprint $table) {
            $table->id();
            $table->string('name_en');
            $table->string('name_sw');
            $table->string('campuses');
            $table->integer('fee');
            $table->string('program_code');
            $table->string('slug')->nullable();
            $table->boolean('is_active')->default(true);
            $table->foreignId('program_category_id')->constrained('program_categories')->cascadeOnDelete();
            $table->foreignId('program_level_id')->constrained('program_levels')->cascadeOnDelete();
            $table->foreignId('department_id')->constrained('departments')->cascadeOnDelete();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('programs');
    }
};

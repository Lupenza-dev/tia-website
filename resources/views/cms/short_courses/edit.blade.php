@extends('cms.application')
@section('content')

<div class="content-panel">
    <div class="title">
        Short Course
    </div>
</div>

<div class="content">
	
	<div class="large-6 columns medium-12 small-12 columns">
		<div class="content-panel">
			<div class="title">
				Edit {{ $short_course->title_en }}
			</div>

			<div class="content">
				{!! Form::model($short_course, ['route' => ['cms.short_courses.update', $short_course->id], 'method' => 'PATCH']) !!}

					@include('cms.short_courses._form', ['submitButton' => "Update"])
				
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@stop
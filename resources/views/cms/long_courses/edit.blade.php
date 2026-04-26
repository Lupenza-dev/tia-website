@extends('cms.application')
@section('content')

<div class="content-panel">
    <div class="title">
        Long Course
    </div>
</div>

<div class="content">
	
	<div class="large-6 columns medium-12 small-12 columns">
		<div class="content-panel">
			<div class="title">
				Edit {{ $long_course->title_en }}
			</div>

			<div class="content">
				{!! Form::model($long_course, ['route' => ['cms.long_courses.update', $long_course->id], 'method' => 'PATCH']) !!}

					@include('cms.long_courses._form', ['submitButton' => "Update"])
				
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@stop
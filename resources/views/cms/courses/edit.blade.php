@extends('cms.application')
@section('content')

<div class="content-panel">
    <div class="title">
        Course
    </div>
</div>

<div class="row collapse">
	
	<div class="large-6 columns medium-12 small-12 columns">
		<div class="content-panel">
			<div class="title">
				Edit {{ $course->title_en }}
			</div>

			<div class="content">
				{!! Form::model($course, ['route' => ['cms.courses.update', $course->id], 'method' => 'PATCH']) !!}

					@include('courses._form', ['submitButton' => "Update"])
				
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@stop
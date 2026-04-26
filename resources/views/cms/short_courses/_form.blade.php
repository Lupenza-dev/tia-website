<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('title_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('title_sw') !!}</span> <br />
  		  <span class='form_error'>{!! $errors->first('category_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('category_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('start_date') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('end_date') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('venue_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('venue_sw') !!}</span> <br />

        <span class='form_error'>{!! $errors->first('description_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('description_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('target_audience_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('target_audience_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('course_overview_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('course_overview_sw') !!}</span><br />
        <span class='form_error'>{!! $errors->first('expected_benefit_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('expected_benefit_sw') !!}</span>
      </div>
    @endif
</div>
<div class="col-md-12 px-0 mt-0">
  {{-- photo upload --}}
  <div class="card-body px-0 pt-0">
    <div class="row">
      {{-- <div class="col-12 form-group ">
        {!! Form::label('course_category_id', "Course Category *") !!}
        {!! Form::select('course_category_id', $course_categories, null, array('class' => 'form-control'))!!}
      </div> --}}

      <div class="col-12 form-group">
        {!! Form::label('title_sw', 'Course title in in swahili *') !!}
        {!! Form::text('title_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('title_en', 'Course title in  english *') !!}
				{!! Form::text('title_en',null,['class'=>'form-control']) !!}
      </div>

      {{-- <div class="col-12 form-group">
        {!! Form::label('sector_en', 'Sector in  english *') !!}
				{!! Form::text('sector_en',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('sector_sw', 'Sector in  swahili *') !!}
				{!! Form::text('sector_sw',null,['class'=>'form-control']) !!}
      </div> --}}

      <div class="col-12 form-group">
        {!! Form::label('category_en', 'category in  english *') !!}
				{!! Form::text('category_en',null,['class'=>'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('category_sw', 'category in  swahili *') !!}
				{!! Form::text('category_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('start_date', 'Start Date *') !!}
				{!! Form::date('start_date',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('end_date', 'End Date *') !!}
				{!! Form::date('end_date',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('venue_en', 'Venue in  english *') !!}
				{!! Form::text('venue_en',null,['class'=>'form-control']) !!}
      </div><div class="col-12 form-group">
        {!! Form::label('venue_sw', 'Venue in  Swahili *') !!}
				{!! Form::text('venue_sw',null,['class'=>'form-control']) !!}
      </div>

      @include("cms.includes.course_details")
      <div class="col-12 form-group">
        {!! Form::submit($submitButton, ['class' => 'btn btn-primary col-md-12']) !!}
      </div>
    </div>
  </div>
</div>


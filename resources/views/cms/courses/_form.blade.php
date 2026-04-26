<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('title_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('title_sw') !!}</span> <br />
  		  <span class='form_error'>{!! $errors->first('programme_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('programme_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('start_date') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('end_date') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('venue_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('venue_sw') !!}</span> <br />
      </div>
    @endif
</div>

<div class="col-md-12 px-0 mt-0">
  {{-- photo upload --}}
  <div class="card-body px-0 pt-0">
    <div class="row">
      <div class="col-12 form-group ">
        {!! Form::label('course_category_id', "Course Category *") !!}
        {!! Form::select('course_category_id', $course_categories, null, array('class' => 'form-control'))!!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('title_sw', 'Course title in in swahili *') !!}
        {!! Form::text('title_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('title_en', 'Course title in  english *') !!}
				{!! Form::text('title_en',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('sector_en', 'Sector in  english *') !!}
				{!! Form::text('sector_en',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('sector_sw', 'Sector in  swahili *') !!}
				{!! Form::text('sector_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('programme_en', 'Programme in  english *') !!}
				{!! Form::text('programme_en',null,['class'=>'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('programme_sw', 'Programme in  swahili *') !!}
				{!! Form::text('programme_sw',null,['class'=>'form-control']) !!}
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
      <div class="col-12 form-group">
        {!! Form::submit($submitButton, ['class' => 'btn btn-primary col-md-12']) !!}
      </div>
    </div>
  </div>
</div>


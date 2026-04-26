<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('title_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('title_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('particulars_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('particulars_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('course_offered_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('course_offered_sw') !!}</span>
      </div>
    @endif
</div>

<div class="col-md-12 px-0 mt-0">
  <div class="card-body mt-0">

    <div class="row">
      <div class="col-12 form-group">
        {!! Form::label('title_sw', 'Title in Swahili') !!}
        {!! Form::text('title_sw',null,['class'=>'form-control']) !!}
      </div>


      <div class="col-12 form-group">
        {!! Form::label('title_en', 'Title in English') !!}
        {!! Form::text('title_en',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('particulars_sw', 'Particulars in Swahili') !!}
				{!! Form::textarea('particulars_sw', null, ['id' => 'custom_redactor_sw_1', 'class' => 'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('particulars_en', 'Particulars in English') !!}
        {!! Form::textarea('particulars_en', null, ['id' => 'custom_redactor_en_2', 'class' => 'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('course_offered_sw', 'Course Offered in Swahili') !!}
				{!! Form::textarea('course_offered_sw', null, ['id' => 'custom_redactor_sw_3', 'class' => 'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('course_offered_en', 'Course Offered in English') !!}
        {!! Form::textarea('course_offered_en', null, ['id' => 'custom_redactor_en_4', 'class' => 'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('student_services_sw', 'Student Services in Swahili') !!}
				{!! Form::textarea('student_services_sw', null, ['id' => 'custom_redactor_sw_5', 'class' => 'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('student_services_en', 'Student Services in English') !!}
        {!! Form::textarea('student_services_en', null, ['id' => 'custom_redactor_en_6', 'class' => 'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('facilities_sw', 'Facilities in Swahili') !!}
				{!! Form::textarea('facilities_sw', null, ['id' => 'custom_redactor_sw_7', 'class' => 'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('facilities_en', 'Facilities in English') !!}
        {!! Form::textarea('facilities_en', null, ['id' => 'custom_redactor_en_8', 'class' => 'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('contacts_sw', 'Contacts in Swahili') !!}
				{!! Form::textarea('contacts_sw', null, ['id' => 'custom_redactor_sw_9', 'class' => 'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('contacts_en', 'Contacts in English') !!}
        {!! Form::textarea('contacts_en', null, ['id' => 'custom_redactor_en_10', 'class' => 'form-control']) !!}
      </div>
      

    </div>
    <div class="row">

      <div class="col-6 form-group">
        {{-- {!! Form::label('active', 'Status') !!}
				{!! Form::select('active', array('1' => 'Published','0'=>'UnPublished'),null,['class'=>'form-control']) !!} --}}
      </div>

      <div class="col-6 form-group pt-4">
        	{!! Form::submit($submitButton, ['class' => 'btn btn-primary col-md-12']) !!}
      </div>

    </div>

  </div>
</div>

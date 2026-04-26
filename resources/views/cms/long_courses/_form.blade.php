<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('title_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('title_sw') !!}</span> <br />
  		  <span class='form_error'>{!! $errors->first('entry_qualification_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('entry_qualification_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('fee_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('fee_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('campus_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('campus_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('program_cordinator_en') !!}</span> <br />
  	    <span class='form_error'>{!! $errors->first('program_cordinator_sw') !!}</span> <br />

        <span class='form_error'>{!! $errors->first('description_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('description_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('program_structure_sw') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('program_structure_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('fee_structure_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('fee_structure_sw') !!}</span><br />
        <span class='form_error'>{!! $errors->first('program_outcomes_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('program_outcomes_sw') !!}</span>

            <span class='form_error'>{!! $errors->first('assesment_en') !!}</span> <br />
        <span class='form_error'>{!! $errors->first('assesment_sw') !!}</span>

       

      </div>
    @endif
</div>
<div class="col-md-12 px-0 mt-0">
  {{-- photo upload --}}
  <div class="card-body px-0 pt-0">
    <div class="row">
      

      <div class="col-12 form-group">
        {!! Form::label('title_sw', 'Programme in in swahili *') !!}
        {!! Form::text('title_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('title_en', 'Programme in  english *') !!}
				{!! Form::text('title_en',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('entry_qualification_en', 'Entry Qualfication in  english *') !!}
				{!! Form::text('entry_qualification_en',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('entry_qualification_sw', 'Entry Qualification in  swahili *') !!}
				{!! Form::text('entry_qualification_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('fee_en', 'Fee in  english *') !!}
				{!! Form::text('fee_en',null,['class'=>'form-control']) !!}
      </div>
      <div class="col-12 form-group">
        {!! Form::label('fee_sw', 'Fee in  swahili *') !!}
				{!! Form::text('fee_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('campus_en', 'Campus in English *') !!}
				{!! Form::text('campus_en',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('campus_sw', 'Campus in Swahili *') !!}
				{!! Form::text('campus_sw',null,['class'=>'form-control']) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('program_cordinator_en', 'Program Cordinator in  english *') !!}
				{!! Form::text('program_cordinator_en',null,['class'=>'form-control']) !!}
      </div><div class="col-12 form-group">
        {!! Form::label('program_cordinator_sw', 'Program Cordinator in  Swahili *') !!}
				{!! Form::text('program_cordinator_sw',null,['class'=>'form-control']) !!}
      </div>

      @include("cms.includes.long_course_details")
      <div class="col-12 form-group">
        {!! Form::submit($submitButton, ['class' => 'btn btn-primary col-md-12']) !!}
      </div>
    </div>
  </div>
</div>


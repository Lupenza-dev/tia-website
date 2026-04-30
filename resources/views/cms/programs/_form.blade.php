<div class="row">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        @foreach($errors->all() as $error)
          <span class='form_error'>{{ $error }}</span><br/>
        @endforeach
      </div>
    @endif
</div>

<div class="card-block px-0 mt-3">
  <h5 class="">Programme Details</h5>

  <div class="col-md-12">
    <div class="col-12 px-0 form-group">
        {!! Form::label('name_en', 'Name in English') !!}
        {!! Form::text('name_en',null,['class'=>'form-control']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('name_sw', 'Name in Swahili') !!}
      {!! Form::text('name_sw',null,['class'=>'form-control']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('program_code', 'Programme Code') !!}
      {!! Form::text('program_code',null,['class'=>'form-control']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('program_category_id', 'Programme Category') !!}
      {!! Form::select('program_category_id', $categories, null, ['class'=>'form-control', 'placeholder' => 'Select Category']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('program_level_id', 'Programme Level') !!}
      {!! Form::select('program_level_id', $levels, null, ['class'=>'form-control', 'placeholder' => 'Select Level']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('department_id', 'Department') !!}
      {!! Form::select('department_id', $departments, null, ['class'=>'form-control', 'placeholder' => 'Select Department']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('campuses[]', 'Campuses') !!}
      {!! Form::select('campuses[]', $campuses, isset($program) ? explode(',', $program->campuses) : null, ['class'=>'form-control', 'multiple' => 'multiple']) !!}
    </div>

    <div class="col-12 px-0 form-group">
      {!! Form::label('fee', 'Fee') !!}
      {!! Form::number('fee',null,['class'=>'form-control', 'min' => 0]) !!}
    </div>

    <div class="col-12 px-0 form-group">
          {!! Form::label('is_active', 'Status') !!}
          {!! Form::select('is_active',array('1' => 'Publish Now','0'=>'Not Published Now'),null,['class'=>'form-control']) !!}
    </div>

    <div class="col-12 px-0 form-group">
            {!! Form::submit($submitButton, ['class'=>'btn btn-primary form-control']) !!}
    </div>
  </div>

</div>

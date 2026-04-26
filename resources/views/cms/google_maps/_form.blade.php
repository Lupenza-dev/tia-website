<div class="col-12">
    @if($errors->count())
      <div class="alert alert-warning col-12" role="alert">
        <span class='form_error'>{!! $errors->first('office_id') !!}</span> <br>
        <span class='form_error'>{!! $errors->first('url') !!}</span>
      </div>
    @endif
</div>

<div class="col-md-12 px-0 mt-0">
  <div class="card-body px-0 pt-0">
    <div class="row">

      <div class="col-12 form-group">
        {!! Form::label('office_id', 'The Regional Office') !!}
        {!! Form::select('office_id', $regional_offices, null, array('class' => 'form-control select2')) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::label('url', "Google Map Embeded Iframe *") !!}
				{!! Form::text('url', null, array('required' => 'required','class'=>'form-control')) !!}
      </div>

      <div class="col-12 form-group">
        {!! Form::submit($submitButton, ['class' => 'btn btn-primary col-md-6']) !!}
      </div>
    </div>
  </div>
</div>

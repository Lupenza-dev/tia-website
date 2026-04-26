@extends('cms.application')
@section('content')

<div class="content-panel">
    <div class="title">
        Customer Center Links
    </div>
</div>

<div class="row collapse">
	
	<div class="large-6 columns medium-12 small-12 columns">
		<div class="content-panel">
			<div class="title">
				Edit {{ $link->title_en }}
			</div>

			<div class="content">
				{!! Form::model($link, ['route' => ['cms.customer_centers.update', $link->id], 'method' => 'PATCH']) !!}

					@include('customer_centers._form', ['submitButton' => "Update"])
				
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@stop
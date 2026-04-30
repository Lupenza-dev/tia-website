@extends('cms.application')
@section('content')

	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-12">
									<div class="page-header-title">
											<h5 class="m-b-10">Programme Categories</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">Programme</a></li>
											<li class="breadcrumb-item"><a href="{{ url('/cms/program_categories') }}">Categories</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Edit Category</a></li>
									</ul>
							</div>
					</div>
			</div>
	</div>

	<div class="main-body">
			<div class="page-wrapper">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header" > <h5>Edit Programme Category</h5></div>
							<div class="card-body">
								{!! Form::model($category, ['route' => ['cms.program_categories.update', $category->id], 'files' => true, 'method' => 'PATCH']) !!}

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
											{!! Form::label('is_active', 'Status') !!}
											{!! Form::select('is_active',array('1' => 'Publish Now','0'=>'Not Published Now'),null,['class'=>'form-control']) !!}
										</div>
										<div class="col-12 px-0 form-group">
											{!! Form::submit('Update', ['class'=>'btn btn-primary form-control']) !!}
										</div>
									</div>
								</div>

								{!! Form::close() !!}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

@stop

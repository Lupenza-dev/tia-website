@extends('cms.application')
@section('content')

	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-7">
									<div class="page-header-title">
											<h5 class="m-b-10">Programme Categories</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">Programme</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Categories</a></li>
									</ul>
							</div>
							<div class="col-md-5 text-right">
									<a href="{{ url('/cms/program_categories/create')}}" class="btn btn-primary"> <i class="feather icon-edit"></i> Create Category</a>
							</div>
					</div>
			</div>
	</div>

	<div class="main-body">
			<div class="page-wrapper">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header" > <h5>Programme Categories</h5></div>
							<div class="card-body">
								@if($categories->count() == 0)
									<div class="col-md-12">
										<div class="alert alert-primary" role="alert">{{ label('lbl_no_information') }}</div>
									</div>
								@else
									<table class="table table-strip no-pg-dataTable dataTable" style="100%">
										<thead>
											<tr>
												<th>#</th>
												<th>Name (EN)</th>
												<th>Name (SW)</th>
												<th>Status</th>
												<th>Option</th>
											</tr>
										</thead>
										<tbody>
										@foreach($categories as $key => $category)
											<tr class="shadow-on-hover">
												<td>{{ $key + 1 }}</td>
												<td><strong>{{ $category->name_en }}</strong></td>
												<td>{{ $category->name_sw }}</td>
												<td><strong>@if ($category->is_active) Published @else UnPublished @endif</strong></td>
												<td>
													<a href="{{ URL::route('cms.program_categories.edit', $category->id) }}" class="label theme-bg2 text-white f-12">View & Edit</a>
													{!! link_to_route('cms.program_categories.destroy', "delete", array($category->id), array('data-method' => 'delete', 'data-confirm' => 'Are you Sure' ,'class' => 'label theme-b bg-danger text-white f-12')) !!}
												</td>
											</tr>
										@endforeach
										</tbody>
									</table>
									<div class="row justify-content-center">
										{!! $categories->render() !!}
									</div>
								@endif
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

@stop

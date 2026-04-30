@extends('cms.application')
@section('content')

	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-7">
									<div class="page-header-title">
											<h5 class="m-b-10">Departments</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">Programme</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Departments</a></li>
									</ul>
							</div>
							<div class="col-md-5 text-right">
									<a href="{{ url('/cms/departments/create')}}" class="btn btn-primary"> <i class="feather icon-edit"></i> Create Department</a>
							</div>
					</div>
			</div>
	</div>

	<div class="main-body">
			<div class="page-wrapper">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header" > <h5>Departments</h5></div>
							<div class="card-body">
								@if($departments->count() == 0)
									<div class="col-md-12">
										<div class="alert alert-primary" role="alert">{{ label('lbl_no_information') }}</div>
									</div>
								@else
									<table class="table table-strip no-pg-dataTable dataTable" style="100%">
										<thead>
											<tr>
												<th>#</th>
												<th>Code</th>
												<th>Name (EN)</th>
												<th>Name (SW)</th>
												<th>Status</th>
												<th>Option</th>
											</tr>
										</thead>
										<tbody>
										@foreach($departments as $key => $department)
											<tr class="shadow-on-hover">
												<td>{{ $key + 1 }}</td>
												<td>{{ $department->dept_code ?? '-' }}</td>
												<td><strong>{{ $department->name_en }}</strong></td>
												<td>{{ $department->name_sw }}</td>
												<td><strong>@if ($department->is_active) Published @else UnPublished @endif</strong></td>
												<td>
													<a href="{{ URL::route('cms.departments.edit', $department->id) }}" class="label theme-bg2 text-white f-12">View & Edit</a>
													{!! link_to_route('cms.departments.destroy', "delete", array($department->id), array('data-method' => 'delete', 'data-confirm' => 'Are you Sure' ,'class' => 'label theme-b bg-danger text-white f-12')) !!}
												</td>
											</tr>
										@endforeach
										</tbody>
									</table>
									<div class="row justify-content-center">
										{!! $departments->render() !!}
									</div>
								@endif
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

@stop

@extends('cms.application')
@section('content')

	<!-- [ breadcrumb ] start -->
	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-7">
									<div class="page-header-title">
											<h5 class="m-b-10">Programmes</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">Programme</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Programmes</a></li>
									</ul>
							</div>

							<div class="col-md-5 text-right">
									<a href="{{ url('/cms/programs/create')}}" class="btn btn-primary"> <i class="feather icon-edit"></i> Create Programme</a>
							</div>
					</div>
			</div>
	</div>
	<!-- [ breadcrumb ] end -->

	<!-- [ Main Content ] start -->
	<div class="main-body">
			<div class="page-wrapper">
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header" > <h5>Programmes</h5></div>
							<div class="card-body">
								@if($program_lists->count() == 0)

									<div class="col-md-12">
										<div class="alert alert-primary" role="alert">{{ label('lbl_no_information') }}</div>
									</div>
								@else

									<table class="table table-strip no-pg-dataTable dataTable" style="100%">
										<thead>
											<tr>
												<th>#</th>
												<th>Programme Name</th>
												<th>Code</th>
												<th>Category</th>
												<th>Level</th>
												<th>Department</th>
												<th>Fee</th>
												<th>Status</th>
												<th>Option</th>
											</tr>
										</thead>

										<tbody>

										@foreach($program_lists as $key => $program)
											<tr class="shadow-on-hover">
												<td>{{ $key + 1 }}</td>
												<td><strong>{{ $program->name_en }}</strong></td>
												<td>{{ $program->program_code }}</td>
												<td>{{ $program->programCategory->name_en ?? '-' }}</td>
												<td>{{ $program->programLevel->name_en ?? '-' }}</td>
												<td>{{ $program->department->name_en ?? '-' }}</td>
												<td>{{ number_format($program->fee) }}</td>
												<td><strong>@if ($program->is_active) Published @else UnPublished @endif</strong></td>
												<td>
													<a href="{{ URL::route('cms.programs.edit', $program->id) }}" class="label theme-bg2 text-white f-12">View & Edit</a>
													{!! link_to_route('cms.programs.destroy', "delete", array($program->id), array('data-method' => 'delete', 'data-confirm' => 'Are you Sure' ,'class' => 'label theme-b bg-danger text-white f-12')) !!}
												</td>
											</tr>
										@endforeach
										</tbody>
									</table>

									<div class="row justify-content-center">
										{!! $program_lists->render() !!}
									</div>
								@endif

							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	<!-- [ Main Content ] end -->

@stop

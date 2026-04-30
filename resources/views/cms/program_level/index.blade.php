@extends('cms.application')
@section('content')

	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-7">
									<div class="page-header-title">
											<h5 class="m-b-10">Programme Levels</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">Programme</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Levels</a></li>
									</ul>
							</div>
							<div class="col-md-5 text-right">
									<a href="{{ url('/cms/program_level/create')}}" class="btn btn-primary"> <i class="feather icon-edit"></i> Create Level</a>
							</div>
					</div>
			</div>
	</div>

	<div class="main-body">
			<div class="page-wrapper">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header" > <h5>Programme Levels</h5></div>
							<div class="card-body">
								@if($levels->count() == 0)
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
										@foreach($levels as $key => $level)
											<tr class="shadow-on-hover">
												<td>{{ $key + 1 }}</td>
												<td><strong>{{ $level->name_en }}</strong></td>
												<td>{{ $level->name_sw }}</td>
												<td><strong>@if ($level->is_active) Published @else UnPublished @endif</strong></td>
												<td>
													<a href="{{ URL::route('cms.program_level.edit', $level->id) }}" class="label theme-bg2 text-white f-12">View & Edit</a>
													{!! link_to_route('cms.program_level.destroy', "delete", array($level->id), array('data-method' => 'delete', 'data-confirm' => 'Are you Sure' ,'class' => 'label theme-b bg-danger text-white f-12')) !!}
												</td>
											</tr>
										@endforeach
										</tbody>
									</table>
									<div class="row justify-content-center">
										{!! $levels->render() !!}
									</div>
								@endif
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

@stop

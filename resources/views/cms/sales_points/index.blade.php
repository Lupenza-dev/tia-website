@extends('cms.application')
@section('content')

	<!-- [ breadcrumb ] start -->
	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-7">
									<div class="page-header-title">
											<h5 class="m-b-10">Sales Points</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">{{label('lbl_site_title_short')}} Details</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Sales Points</a></li>
									</ul>
							</div>

							<div class="col-md-5 text-right">
									<a href="{{ url('/cms/sales_points/create')}}" class="btn btn-primary">Create Sales Point</a>
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
							<div class="card-header" > <h5>List Of Sales Points</h5></div>
							<div class="card-body">
								@if($salespoints->count() == 0)

									<div class="col-md-12">
										<div class="alert alert-primary" role="alert">{{ label('lbl_no_information') }}	</div>
									</div>
								@else

									<table class="table table-strip no-pg-dataTable dataTable" style="100%">
										<thead>
											<tr>
												<th>No.</th>
												<th>Title</th>
												<th>Fullname</th>
												<th>Email</th>
												<th>Phone</th>
												<th>Status</th>
												<th>Options</th>
											</tr>
										</thead>

										<tbody>

										@foreach($salespoints as $key => $salespoint)
											<tr class="shadow-on-hover">
												<td>{{ $key + 1}}</td>
												<td><strong>@php echo	wordwrap($salespoint->title,30,"</br>")	@endphp  </strong></td>
												<td><strong>@php echo	wordwrap($salespoint->fullname,30,"</br>")	@endphp  </strong></td>
												<td><strong>@php echo	wordwrap($salespoint->email,30,"</br>")	@endphp  </strong></td>
												<td><strong>@php echo	wordwrap($salespoint->phone,30,"</br>")	@endphp  </strong></td>
												<td><strong>@if ($salespoint->active) Published @else UnPublished @endif</strong><br/></td>
												<td>
													<a href="{{ URL::route('cms.sales_points.edit', $salespoint->id) }}" class="label theme-bg2 text-white f-12">View & Edit</a>
													{!! link_to_route('cms.sales_points.destroy', "delete", array($salespoint->id), array('data-method' => 'delete', 'data-confirm' => 'Are you Sure' ,'class' => 'label theme-b bg-danger text-white f-12')) !!}
												</td>
											</tr>
										@endforeach
										</tbody>
									</table>

									{{-- <div class="row justify-content-center">
										{!! $salespoints->render() !!}
									</div> --}}
								@endif

							</div>
						</div>
					</div>

				</div>
			</div>
	</div>
	<!-- [ Main Content ] end -->

@stop

@extends('cms.application')
@section('content')

  <!-- [ breadcrumb ] start -->
	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-12">
									<div class="page-header-title">
											<h5 class="m-b-10">Quotation</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">Site Contents</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Informations</a></li>
											<li class="breadcrumb-item"><a href="{{ url('/cms/quotations') }}">{{ label('lbl_quotations') }}</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Edit Quotation</a></li>
									</ul>
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
							<div class="card-header" > <h5>Edit Quotation</h5></div>
							<div class="card-body">
               					 {!! Form::model($quotation, ['route' => ['cms.quotations.update', $quotation->id], 'files' => true, 'method' => 'PATCH']) !!}

									@include('cms.includes.cropimage',['img' => asset('/uploads/quotations/'.$quotation->photo_url)])

    								@include('cms.quotations._form', ['submitButton' => "Update"])

    							{!! Form::close() !!}
							</div>
						</div>
					</div>


				</div>
			</div>
	</div>
	<!-- [ Main Content ] end -->
@stop

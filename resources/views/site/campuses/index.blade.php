@extends('site.inner')

@section('title')
{{label('lbl_campuses')}}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_campuses') }}</li>
@endsection

@section('page_title')
{{ label('lbl_campuses') }}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0">
					@if (count($campuses))
						<div class="col-12 px-0">
							
							@foreach ($campuses as $campus)
								<div class="col px-0">  
									<div class="d-flex align-items-center h-100 w-100 pointer-hover border-bottom-secondary-thin position-relative">                                    
										<a href="{{url('campuses/'.$campus->slug)}}" class="py-3 d-flex w-100 list-item  align-items-center">
											<i class="fa fa-file-medical-alt pr-4 c-green align-self-center text-lg"></i>
											<i class="fa fa-university c-blue pr-4 align-self-center text-lg"></i>
											<div class="">
												<div class="bold-600 text-muted">{!! date('d M, Y', strtotime($campus->created_at)) !!}</div>
												<div> {!! str_limit(strip_tags($campus->title ) ,120) !!} </div>
											</div>   
										</a>
									</div>
								</div>
							@endforeach

						</div>

						<div class="col-12 pt-5 pb-3 d-flex justify-content-center">
							{!! $campuses->render() !!}
						</div>
					@else
						<div class="col-12 px-0 py-3 bold-600">
							{{label('lbl_no_information')}}
						</div>
					@endif
                </div>

            </div>
            <div class="col-lg-4 px-0">
                @include('site.includes/sidebar')
            </div>
        </div>
        
    </div>

</div>

@stop

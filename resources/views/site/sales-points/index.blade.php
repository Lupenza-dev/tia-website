@extends('site.layout')
@section('title')

{!!  label('lbl_customer_portal').' - '.label('lbl_sales_personel') !!}

@endsection

@section('content')

<div class="breadcumb-banner bg-light banner-image-home" @if($background) style="background-image: url({{asset($background->banner_bg)}})" @endif>  
    <div class="banner px-3 px-lg-5 pt-5">    
        <div class="banner-inner px-xl-5 d-flex">
            <ol class="breadcrumb hover-bg-trans bg-primary">
                <li class="breadcrumb-item "><a href="{{url('/')}}"><span class="fas fa-home"></span></a></li>
                <li class="breadcrumb-item active" aria-current="page">{!! label('lbl_customer_portal') !!}</li>
                {{-- {{breadcrumb()}} --}}
            </ol>
        </div>
    </div>
</div>

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5 pt-3">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="">
					<h3 class="main-heading"> {{ label('lbl_customer_portal') }} </h3>
					<div class="main-heading-border"></div>
				</div>
  
				<div class="row mx-0">
					
                    <div class="col-12 py-3 border-bottom-secondary-thin">
                        <div class="pb-2">
                          <h5 class="text-primary bold-600">
                            <i class="fa fa-cart-plus mr-2"></i> {{label('lbl_medicine_purchase')}}
                          </h5>
                        </div>
                        <div class="text-justify">
                          {{label('lbl_medicine_purchase_summary')}}
                        </div>
                    </div>
  
                    <div class="col-12 py-3">

                        <div class="d-block pt-3">
                          <h5 class="text-accent bold-600">
                            <i class="fa fa-shipping-fast mr-2"></i> {{label('lbl_sales_personel')}}
                          </h5>
                        </div>
                    
                        @if(count($sales_points))  
                            <div class="row pt-3">
                                @foreach($sales_points as $key => $sales_point)
                                    <div class="col-lg-4 col-md-6 mb-3">
                                        <div class="border bg-light p-3">
                                            <ul class="list-unstyled mb-0">
                                            <li class="bold-600 py-1">
                                                <i class="fa fa-map-marker mr-2 text-secondary"></i> {{ $sales_point->title }}
                                            </li>
                                            <li class="border-top py-1">
                                                <i class="fa fa-user mr-2 text-secondary"></i> {{ $sales_point->fullname }}
                                            </li>
                                            <li class="border-top py-1">
                                                <i class="fa fa-envelope mr-2 text-secondary"></i> <a href="mailto:{{ $sales_point->email }}">{{ $sales_point->email }}</a>
                                            </li>
                                            <li class="border-top py-1">
                                                <i class="fa fa-phone mr-2 text-secondary"></i> <a href="tel:{{ $sales_point->phone }}">{{ $sales_point->phone }}</a>
                                            </li>
                                            </ul>
                                        </div>
                                    </div>
                                @endforeach
                            </div>

                            <div class="col-12 px-0 mt-5 d-flex justify-content-center">
                                {!! $sales_points->render() !!}
                            </div>

                        @else
                            <div class="col-12 px-0 py-3 bold-600">
                                {{label('lbl_no_information')}}
                            </div>
                        @endif

                    </div>
											
				</div>
  
			</div>
			
		</div>
		
	</div>
</div>

@stop

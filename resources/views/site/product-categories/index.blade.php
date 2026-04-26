@extends('site.layout')
@section('title')

{!! label('lbl_our_products') !!}

@endsection

@section('content')

<div class="breadcumb-banner bg-light banner-image-home" @if($background) style="background-image: url({{asset($background->banner_bg)}})" @endif>  
    <div class="banner px-3 px-lg-5 pt-5">    
        <div class="banner-inner px-xl-5 d-flex">
            <ol class="breadcrumb hover-bg-trans bg-primary">
                <li class="breadcrumb-item "><a href="{{url('/')}}"><span class="fas fa-home"></span></a></li>
				<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_our_products') }}</li>
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
					<h3 class="main-heading"> {{ label('lbl_our_products') }} </h3>
					<div class="main-heading-border"></div>
				</div>
  
				<div class="row mx-0">
					@if(count($categories))

						@foreach ($categories as $category)
							<div class="col-lg-4 col-md-6 col-12 py-3 px-0 px-md-3">
								<div class="productCarousel h-100 bg-secondary divide">
									<div class="overflow-hidden h-100">
										<a href="{{url('product-categories/'.$category->slug)}}" class="carousel-item h-100 active">
											<div class="product-hd-container h-100 position-relative" style="background-image: url({{asset($category->photo_url)}});">
											</div>                  
											<div class="carousel-caption">
											<p class="product-title"> {{$category->title}} </p>
											<p class="product-content"> {{$category->summary}} </p>
											</div>
										</a>
									</div>
								</div>
							</div>
						@endforeach


						<div class="col-12 px-0 mt-5 d-flex justify-content-center">
							{!! $categories->render() !!}
						</div>
					@else
						<div class="col-12 px-0 py-3">
							{{label('lbl_no_information')}}
						</div>
					@endif
											
				</div>
  
			</div>
			
		</div>
		
	</div>
</div>

@stop
@extends('site.layout')
@section('title')

{!! $product->title !!}

@endsection

@section('content')

<div class="breadcumb-banner bg-light banner-image-home" @if($background) style="background-image: url({{asset($background->banner_bg)}})" @endif>  
    <div class="banner px-3 px-lg-5 pt-5">    
        <div class="banner-inner px-xl-5 d-flex">
            <ol class="breadcrumb hover-bg-trans bg-primary">
                <li class="breadcrumb-item "><a href="{{url('/')}}"><span class="fas fa-home"></span></a></li>
                <li class="breadcrumb-item "><a href="{{url('product-categories')}}"> {{ label('lbl_our_products') }} </a></li>
				@if($category)
                	<li class="breadcrumb-item "><a href="{{url('product-categories/'.$category->slug)}}"> {{ $category->title }} </a></li>
				@endif
				<li class="breadcrumb-item active" aria-current="page">{{ $product->title }}</li>
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
					<h3 class="main-heading"> {{ $product->title }} </h3>
					<div class="main-heading-border"></div>
				</div>
  
				<div class="row mx-0">
					<div class="col-12 px-0">
						<div class="pb-3">
							{!! $product->summary !!}
						</div>
						<div class="py-3 border-bottom">
							<img class="img-fluid mb-3" src="{{asset($product->photo_url)}}" alt="{{$product->title}}">
						</div>
						<div class="py-3">
							{!! $product->content !!}
						</div>
					</div>
				</div>
  
			</div>
			
		</div>
		
	</div>
</div>

@stop
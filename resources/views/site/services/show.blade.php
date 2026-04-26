@extends('site.layout')
@section('title')

{{ $service->title }}

@endsection

@section('content')

<div class="breadcumb-banner has-ripple-bg px-3 px-lg-5 bg-light-darker">  
    <div class="ripple-bg" data-src="{{asset('site/images/bg/bg1.jpg')}}"> </div>
    <div class="banner mx-lg-5 d-inline-block  pb-1 pt-5 mt-2">    
      <div class="banner-inner  ">
          <ol class="breadcrumb hover-bg-trans ">
            <li class="breadcrumb-item "><a href="{{url('/')}}"><span class="fas fa-home"></span></a></li>
            <li class="breadcrumb-item"><a href="{{ url('services') }}">{{ label('lbl_our_services') }}</a></li>
			<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($service->title) ,20) !!}</li>
            {{-- {{breadcrumb()}} --}}
          </ol>
      </div>
    </div>
    <br>
    <h5 class="d-inline-block text-primary text-uppercase bold-600 px-3 px-lg-5 py-3 my-0 rounded-top bg-white mx-lg-5"><span> {!! $service->title !!} </span> </h5>
</div>

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-lg-5 pt-3">
        
      
        <div class="col-12">
            <div class="row">
                <div class="col-lg-8 page-content my-2 pr-lg-5" data-aos="fade-up">

                    <div class="row pr-lg-4">
                         
                        <div class="col-12 px-0 mt-2">
                            {{-- <h5 class="other-heading"> {!! $service->title !!} </h5> --}}
                            <div class="full-hd-container rounded-medium has-ripple-bg">
                                <div class="ripple-bg z-index-2" data-src="{!! asset('/uploads/services/'.$service->photo_url) !!}"> </div> 
                                <img src="{!! asset('/uploads/services/'.$service->photo_url) !!}" alt="{{ $service->title }}" class="rounded-medium z-index-0">
                            </div>
                            <div class="rich-text py-3 mt-3">
                                {!! $service->content !!}
                            </div>
                        </div>
                        
                    </div>

                </div>
                <div class="col-lg-4 px-0">
                    @include('site.includes/sidebar')
                </div>
            </div>
        </div>

    </div>

</div>

@stop

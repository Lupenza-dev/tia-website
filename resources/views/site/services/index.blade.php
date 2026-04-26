@extends('site.layout')
@section('title')

{!! label('lbl_our_services') !!}

@endsection

@section('content')

<div class="breadcumb-banner has-ripple-bg px-3 px-lg-5 bg-light-darker">  
  <div class="ripple-bg" data-src="{{asset('site/images/bg/bg1.jpg')}}"> </div>
  <div class="banner mx-lg-5 d-inline-block  pb-1 pt-5 mt-2">    
    <div class="banner-inner  ">
        <ol class="breadcrumb hover-bg-trans ">
          <li class="breadcrumb-item "><a href="{{url('/')}}"><span class="fas fa-home"></span></a></li>
          <li class="breadcrumb-item active" aria-current="page">{{ label('lbl_our_services') }}</li>
          {{-- {{breadcrumb()}} --}}
        </ol>
    </div>
  </div>
  <br>
  <h5 class="d-inline-block text-primary text-uppercase bold-600 px-3 px-lg-5 py-3 my-0 rounded-top bg-white mx-lg-5"><span> {{ label('lbl_our_services') }}</span> </h5>
</div>

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
  <div class="col-12 px-0 px-lg-5 pt-3">
      
    
      <div class="col-12">
          <div class="row">
              <div class="col-lg-8 page-content my-2 pr-lg-5" data-aos="fade-up">

                  <div class="row pr-lg-4">
                       
                    <div class="col-12 px-0 mt-2">

                      <div class="row mx-0">
                          <h5 class="other-heading"></h5>
                          <div class="rich-text text-justify py-2">
                             {!! nl2br(label('lbl_our_services_msg')) !!}
                          </div>
                      </div>

                      <div class="row mx-0 pt-4">

                          <div class="col-12 px-0">
                              <h5 class="text-primary ">
                                  <i class="fa fa-crosshairs pr-2  align-self-center"></i> {{ label('lbl_our_services') }}
                              </h5>
                          </div>
                          
                          <div class="col-12 px-0">
                              <div class="row mx-0">

                                @if(count($services))

                                  @foreach($services as $service)
                                    <div class="col-md-4 col-lg-6 service my-3">
                                      <div class="service-container matte rounded-slight">
                                          <div class="matte">
                                          <div class="service-image card-image-potrait" style="background-image: url('{{ asset('uploads/services/'.$service->photo_url) }}')"> </div> 
                                          </div>
                                          <div class="service-body text-white">
                                          <div class="service-contents p-2">
                                              <h6 class="text-bold py-2"> {!! str_limit(strip_tags( $service->title ),25) !!}</h6>  
                                              <div class="service-info">
                                                {!! str_limit(strip_tags( $service->content ),150) !!}                 
                                              </div> 
                                              <div class="my-3"><a class="bg-secondary cursor-pointer my-3 p-2 bold-600 rounded" href="{{ url('services/'.$service->slug)}}">{{ label('lbl_readmore') }}</a></div>                  
                                          </div>                
                                          </div>  
                                          <div class="service-title-container text-white matte ">
                                          <span class="service-title">{!! str_limit(strip_tags( $service->title ),25) !!}</span> 
                                          </div>      
                                      </div>      
                                    </div>
                                  @endforeach

                                  <div class="col-12 d-flex justify-content-center mt-5">
                                    {!! $services->render() !!}
                                  </div>

                                @else
                                  <div class="col-12 px-0">
                                    {{label('lbl_no_information')}}
                                  </div>
                                @endif

                              </div>
                          </div>

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

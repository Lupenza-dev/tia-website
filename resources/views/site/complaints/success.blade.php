@extends('site.layout')
@section('title')
  {{ label('lbl_feedback') }}
@endsection
@section('content')

<div class="breadcumb-banner bg-light banner-image-home" @if($background) style="background-image: url({{asset($background->banner_bg)}})" @endif>  
    <div class="banner px-3 px-lg-5 pt-5">    
        <div class="banner-inner px-xl-5 d-flex">
            <ol class="breadcrumb hover-bg-trans bg-primary">
                <li class="breadcrumb-item "><a href="{{url('/')}}"><span class="fas fa-home"></span></a></li>
                <li class="breadcrumb-item active" aria-current="page">{{ label('lbl_feedback') }}</li>
            </ol>
        </div>
    </div>
</div>

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5 pt-3">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="">
                    <h3 class="main-heading"> {{ label('lbl_feedback') }} </h3>
                    <div class="main-heading-border"></div>
                </div>

                <div class="row mx-0">
                        
                    <div class="col-12 px-0 mt-2">
                        <div class="rich-text c-green bold-600 pb-3">
                            <h3>{{ label('lbL_feedback_success')}}!</h3>
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

@stop


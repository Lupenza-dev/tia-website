@extends('site.inner')
@section('title')
{!! $quotation->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('quotations')}}">{{label('lbl_alumnae_say')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($quotation->name) ,20) !!}</li>
@endsection

@section('page_title')
{!! $quotation->name !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0">
                        
                    <div class="col-12 border-top px-0">
                        <div class="pt-2 text-center">
                            <div style="width: 120px; height: 120px; border-radius: 50%; overflow: hidden; border: 4px solid #149246; margin: 0 auto; box-shadow: 0 3px 10px rgba(20,146,70,0.2);">
                                <img src="{{ asset('uploads/quotations/' . $quotation->photo_url) }}" alt="{{ $quotation->name }}" style="width: 100%; height: 100%; object-fit: cover;">
                            </div>
                            <h5 class="font-weight-bold mt-3 mb-1" style="color: #2156a7;">{{ $quotation->name }}</h5>
                            <small style="color: #149246; font-weight: 600;">{{ $quotation->title }}</small>
                        </div>
                        <div class="rich-text py-3">
                            {!! $quotation->content !!}
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

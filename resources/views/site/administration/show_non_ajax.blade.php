@extends('site.inner')

@section('title')
{{ label('lbl_profile') }}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{label('lbl_welcome_note')}}</li>
@endsection

@section('page_title')
{{ label('lbl_profile') }}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0">
                        
                    <div class="col-12 px-0">

                        <div class="rich-text">
                        
                        @if(!empty($member->content))
                        <div class="d-sm-flex">
                            <div class="my-auto mr-3 pb-3 pb-sm-0">
                                <div class="p-3 text-center">
                                  <img class="align-self-center img-fluid mr-3" 
                                  style="max-height: 200px !important;"
                                  src="{{  url('/uploads/administration/'.$member->photo_url) }}" 
                                  alt="{!! $member->fullname !!} photo">
                                </div>
                            </div>
                            <div class="my-auto text-center text-lg-left">
                                <div class="pb-2">
                                    <h3 class="text-bold"> {{ $member->salutation.' '.$member->fullname }}</h3>
                                </div>
                                <div class="pb-2">
                                  <span class="font-weight-bold">{{ label('lbl_email') }}:</span> 
                                  <a title="Send Email" href="mailto:{{$member->email}}">{{ $member->email }}</a>
                                </div>
                                <div>
                                  <span class="font-weight-bold">{{ label('lbl_phone') }}:</span> 
                                  <a title="Call" href="tel:{{$member->phone}}">{{ $member->phone }}</a>
                                </div>
                            </div>
                        </div>
                        <h5 class="other-heading">{{label('lbl_biography')}} </h5>
                             {!! $member->content !!}
                            @else
                                {{label('lbl_no_information')}}
                            @endif
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



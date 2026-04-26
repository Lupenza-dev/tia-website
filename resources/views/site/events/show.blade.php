@extends('site.inner')

@section('title')
{!! $event->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('events')}}">{{label('lbl_events')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($event->title) ,20) !!}</li>
@endsection

@section('page_title')
{!! $event->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0">
                        
                    <div class="col-12 px-0 border-bottom">
                        <div class="py-2 text-muted bold-600">
                            <span class="d-block pb-2">
                                <span class="d-inline-block mr-3">
                                    <i class="fa fa-calendar-alt mr-1"></i> {!! date('d M, Y', strtotime($event->created_at)) !!}
                                </span>
                                <span class="d-inline-block mr-3">
                                    <i class="fa fa-clock mr-1"></i> {!! $event->event_time !!}
                                </span>
                            </span>
                            <span class="d-block border-top py-2">
                                <i class="fa fa-map-marker mr-1"></i> {!! $event->location !!}
                            </span>
                        </div>
                    </div>
                    <div class="col-12 border-top px-0">
                        <div class="rich-text py-3">
                            {!! $event->content !!}
                        </div>
                        <div class="pt-2 text-centerrr">
                            <img class="img-fluid" src="{{asset('uploads/events/'.$event->photo_url)}}" alt="{{$event->title}}">
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
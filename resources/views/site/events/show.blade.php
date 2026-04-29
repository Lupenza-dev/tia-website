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

                <!-- Hero Image Banner -->
                <div class="col-12 px-0 mb-4">
                    <div style="position: relative; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.1);">
                        <img class="img-fluid w-100" src="{{ asset('uploads/events/'.$event->photo_url) }}" alt="{{ $event->title }}" style="max-height: 450px; object-fit: cover; width: 100%;">
                        <div style="position: absolute; bottom: 0; left: 0; right: 0; background: linear-gradient(transparent, rgba(0,0,0,0.7)); padding: 40px 25px 20px;">
                            <div style="display: inline-block; background: #2156a7; color: #fff; border-radius: 20px; padding: 4px 14px; font-size: 12px; font-weight: 600; margin-bottom: 8px;">
                                <i class="fa fa-calendar-check mr-1"></i> Event
                            </div>
                            <h4 class="font-weight-bold mb-1" style="color: #fff; text-shadow: 0 1px 3px rgba(0,0,0,0.3);">{{ $event->title }}</h4>
                        </div>
                    </div>
                </div>

                <!-- Event Details Cards -->
                <div class="col-12 px-0 mb-4">
                    <div class="row mx-0">
                        <div class="col-md-4 px-2 mb-2">
                            <div style="background: #f8f9fa; border-radius: 8px; padding: 16px; border-left: 4px solid #149246; text-align: center;">
                                <i class="fa fa-calendar-alt" style="font-size: 22px; color: #149246; margin-bottom: 6px; display: block;"></i>
                                <small style="color: #888; text-transform: uppercase; font-weight: 600; font-size: 11px;">Date</small>
                                <div style="color: #333; font-weight: 600; font-size: 14px; margin-top: 4px;">{!! date('d M, Y', strtotime($event->event_date)) !!}</div>
                            </div>
                        </div>
                        <div class="col-md-4 px-2 mb-2">
                            <div style="background: #f8f9fa; border-radius: 8px; padding: 16px; border-left: 4px solid #2156a7; text-align: center;">
                                <i class="fa fa-clock" style="font-size: 22px; color: #2156a7; margin-bottom: 6px; display: block;"></i>
                                <small style="color: #888; text-transform: uppercase; font-weight: 600; font-size: 11px;">Time</small>
                                <div style="color: #333; font-weight: 600; font-size: 14px; margin-top: 4px;">{!! $event->event_time !!}</div>
                            </div>
                        </div>
                        <div class="col-md-4 px-2 mb-2">
                            <div style="background: #f8f9fa; border-radius: 8px; padding: 16px; border-left: 4px solid #e67e22; text-align: center;">
                                <i class="fa fa-map-marker-alt" style="font-size: 22px; color: #e67e22; margin-bottom: 6px; display: block;"></i>
                                <small style="color: #888; text-transform: uppercase; font-weight: 600; font-size: 11px;">Location</small>
                                <div style="color: #333; font-weight: 600; font-size: 14px; margin-top: 4px;">{!! $event->location !!}</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Content -->
                <div class="col-12 px-0">
                    <div style="background: #fff; border-radius: 12px; padding: 25px 30px; border: 1px solid #eee;">
                        <div class="rich-text" style="font-size: 15px; line-height: 1.8; color: #444;">
                            {!! $event->content !!}
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
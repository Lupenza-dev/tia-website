@extends('site.inner')

@section('title')
{!! $announcement->name !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('announcements')}}">{{label('lbl_announcements')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($announcement->name) ,20) !!}</li>
@endsection

@section('page_title')
{!! $announcement->name !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <!-- Announcement Header -->
                <div class="col-12 px-0 mb-4">
                    <div style="background: linear-gradient(135deg, #2156a7 0%, #149246 100%); border-radius: 12px; padding: 30px 25px; color: #fff; position: relative; overflow: hidden;">
                        <div style="position: absolute; top: -20px; right: -20px; width: 100px; height: 100px; border-radius: 50%; background: rgba(255,255,255,0.08);"></div>
                        <div style="position: absolute; bottom: -15px; left: -15px; width: 70px; height: 70px; border-radius: 50%; background: rgba(255,255,255,0.06);"></div>
                        <div style="display: inline-block; background: rgba(255,255,255,0.2); border-radius: 20px; padding: 4px 14px; font-size: 12px; font-weight: 600; margin-bottom: 10px;">
                            <i class="fa fa-bullhorn mr-1"></i> Announcement
                        </div>
                        <h4 class="font-weight-bold mb-2" style="color: #fff;">{{ $announcement->name }}</h4>
                        <span style="color: rgba(255,255,255,0.8); font-size: 14px;">
                            <i class="fa fa-calendar-alt mr-1"></i> {!! date('d M, Y', strtotime($announcement->created_at)) !!}
                        </span>
                    </div>
                </div>

                <!-- Content -->
                <div class="col-12 px-0">
                    <div style="background: #fff; border-radius: 12px; padding: 25px 30px; border: 1px solid #eee;">
                        <div class="rich-text" style="font-size: 15px; line-height: 1.8; color: #444;">
                            {!! $announcement->content !!}
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

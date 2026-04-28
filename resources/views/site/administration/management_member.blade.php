@extends('site.inner')

@section('title')
{!! $message->fullname !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('/')}}">{{label('lbl_home')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">Management Member</li>
@endsection

@section('page_title')
{!! $message->fullname !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0">

                    <div class="col-12 px-0 mb-4">
                            <div class="text-center" style="background: linear-gradient(135deg, #2156a7 0%, #149246 100%); border-radius: 12px; padding: 40px 30px 30px; color: #fff; position: relative; overflow: hidden;">
                                <div style="position: absolute; top: -30px; right: -30px; width: 120px; height: 120px; border-radius: 50%; background: rgba(255,255,255,0.08);"></div>
                                <div style="position: absolute; bottom: -20px; left: -20px; width: 80px; height: 80px; border-radius: 50%; background: rgba(255,255,255,0.06);"></div>
                                <div style="width: 140px; height: 140px; border-radius: 50%; overflow: hidden; border: 4px solid #fff; margin: 0 auto 20px; box-shadow: 0 4px 15px rgba(0,0,0,0.2);">
                                    <img src="{{ asset('uploads/administration/' . $message->photo_url) }}" alt="{{ $message->fullname }}" style="width: 100%; height: 100%; object-fit: cover;">
                                </div>
                                <h4 class="font-weight-bold mb-1" style="color: #fff;">{{ $message->fullname }}</h4>
                                <p class="mb-0" style="font-size: 15px; color: rgba(255,255,255,0.85);">{{ $message->title_en }}</p>
                            </div>
                        </div>

                        <div class="col-12 px-0">
                            <div style="background: #fff; border-radius: 12px; padding: 30px; border: 1px solid #eee; position: relative;">
                                <div style="position: absolute; top: 15px; left: 25px; font-size: 60px; color: rgba(20,146,70,0.1); font-family: Georgia, serif; line-height: 1;">&ldquo;</div>
                                <h5 class="font-weight-bold mb-3" style="color: #2156a7;">Welcome Message</h5>
                                <div class="rich-text" style="font-size: 15px; line-height: 1.8; color: #444;">
                                    {!! $message->content_en !!}
                                </div>
                                <div style="margin-top: 25px; padding-top: 15px; border-top: 1px solid #eee; text-align: right;">
                                    <strong style="color: #2156a7;">{{ $message->fullname }}</strong><br>
                                    <small style="color: #149246; font-weight: 600;">{{ $message->title_en }}</small>
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

@stop
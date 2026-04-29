@extends('site.inner')
@section('title')
{!! $news->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('news')}}">{{label('lbl_news')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($news->title) ,20) !!}</li>
@endsection

@section('page_title')
{!! $news->title  !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <!-- Hero Image Banner -->
                <div class="col-12 px-0 mb-4">
                    <div style="position: relative; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.1);">
                        <img class="img-fluid w-100" src="{{ asset('uploads/news/'.$news->photo_url) }}" alt="{{ $news->title }}" style="max-height: 450px; object-fit: cover; width: 100%;">
                        <div style="position: absolute; bottom: 0; left: 0; right: 0; background: linear-gradient(transparent, rgba(0,0,0,0.7)); padding: 40px 25px 20px;">
                            <div style="display: inline-block; background: #149246; color: #fff; border-radius: 20px; padding: 4px 14px; font-size: 12px; font-weight: 600; margin-bottom: 8px;">
                                <i class="fa fa-newspaper mr-1"></i> News
                            </div>
                            <h4 class="font-weight-bold mb-1" style="color: #fff; text-shadow: 0 1px 3px rgba(0,0,0,0.3);">{{ $news->title }}</h4>
                        </div>
                    </div>
                </div>

                <!-- Date & Share Bar -->
                <div class="col-12 px-0 mb-3">
                    <div style="display: flex; justify-content: space-between; align-items: center; background: #f8f9fa; border-radius: 8px; padding: 12px 18px; border-left: 4px solid #149246;">
                        <div>
                            <span style="color: #555; font-size: 14px;">
                                <i class="fa fa-calendar-alt mr-1" style="color: #149246;"></i> {!! date('d M, Y', strtotime($news->created_at)) !!}
                            </span>
                        </div>
                       
                    </div>
                </div>

                <!-- Content -->
                <div class="col-12 px-0">
                    <div style="background: #fff; border-radius: 12px; padding: 25px 30px; border: 1px solid #eee;">
                        <div class="rich-text" style="font-size: 15px; line-height: 1.8; color: #444;">
                            {!! $news->content !!}
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
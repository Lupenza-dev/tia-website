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

                <div class="row mx-0">
                        
                    <div class="col-12 px-0 border-bottom">
                        <div class="py-2">
                            <span class="text-muted bold-600 d-inline-block mr-4">
                                <i class="fa fa-calendar-alt mr-1"></i> {{ label('lbl_posted') }}: {!! date('d M, Y', strtotime($news->created_at)) !!}
                            </span>
                            {{-- <a href="#" target="_blank" rel="noopener noreferrer" class="text-primary d-inline-block">
                                <i class="fa fa-file-download mr-1"></i> DOWNLOAD
                            </a> --}}
                        </div>
                    </div>
                    <div class="col-12 border-top px-0">
                        <div class="pt-2 text-center">
                            <img class="img-fluid" src="{{asset('uploads/news/'.$news->photo_url)}}" alt="{{$news->title}}">
                        </div>
                        <div class="rich-text py-3">
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
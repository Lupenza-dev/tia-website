@extends('site.inner')

@section('title')
{!! $howdoi->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('howdois')}}">{{label('lbl_how_doi')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($howdoi->title) ,20) !!}</li>
@endsection

@section('page_title')
{!! $howdoi->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0">
                        
                    <div class="col-12 px-0 border-bottom">
                        <div class="py-3">
                            <span class="text-muted text-sm bold-600 d-inline-block mr-4">
                                <i class="fa fa-calendar-alt mr-1"></i> {!! label('lbl_posted').': '.date('d M, Y', strtotime($howdoi->created_at)) !!}
                            </span>
                        </div>
                    </div>
                    <div class="col-12 border-top px-0">
                        <div class="rich-text py-3 mt-3">
                            {!! $howdoi->content !!}
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

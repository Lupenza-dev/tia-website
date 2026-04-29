@extends('site.inner')

@section('title')
    {!! $page->title !!}
@endsection

@section('breadcrumb')
    {{ breadcrumb() }}
@endsection

@section('page_title')
    {!! $page->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">

            @if($page->has_sidebar == 1)
                <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">
                    <div style="background: #fff; border-radius: 12px; padding: 25px 30px; border: 1px solid #eee; margin-top: 12px;">
                        <div class="rich-text" style="font-size: 15px; line-height: 1.8; color: #444;">
                            {!! $page->content !!}
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 px-0">
                    @include('site.includes/sidebar')
                </div>
            @else
                <div class="col-lg-12 px-0 my-2 page-content">
                    <div style="background: #fff; border-radius: 12px; padding: 25px 30px; border: 1px solid #eee; margin-top: 12px;">
                        <div class="rich-text" style="font-size: 15px; line-height: 1.8; color: #444;">
                            {!! $page->content !!}
                        </div>
                    </div>
                </div>
            @endif

        </div>
        
    </div>

</div>

@stop

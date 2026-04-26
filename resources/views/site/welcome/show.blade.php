@extends('site.inner')

@section('title')
{{ label('lbl_welcome_note') }}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{label('lbl_welcome_note')}}</li>
@endsection

@section('page_title')
{{ label('lbl_welcome_note') }}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="row mx-0">
            <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

                <div class="row mx-0">
                        
                    <div class="col-12 px-0">
                        <div class="rich-text">
                            @if($welcome)
                                {!! $welcome->content !!}
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



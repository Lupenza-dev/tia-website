@extends('site.inner')

@section('title')
{!! $long_course->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('long_courses')}}">{{label('lbl_long_course')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($long_course->title) ,20) !!}</li>
@endsection

@section('page_title')
{!! $long_course->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5">
    
        <div class="col-12">
            <div class="row">
                <div class="col-lg-12 page-content my-2 pr-lg-5" data-aos="fade-up">

                    <div class="row pr-lg-4">
                         
                        <div class="col-12 px-0 mt-2">
                            <h5 class="text-primary bold-600 pb-3">{{ $long_course->title}} </h5>
                            <hr>
                            <p>
                              {!! $long_course->description !!}  
                                 </p>
                    
                    
                         <hr>
                </div>
                            @include("site.includes.course_long", ["course" => $long_course])
                        </div>
                        
                    </div>

                </div>
            </div>
        </div>
        
    </div>

</div>


@stop

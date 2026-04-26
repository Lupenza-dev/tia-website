@extends('site.inner')

@section('title')
{!! $campus->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('campuses')}}">{{label('lbl_campuses')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($campus->title) ,20) !!}</li>
@endsection

@section('page_title')
{!! $campus->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 ">
    
        <div class="row mx-0">
            <div class="col-lg-8  my-2 pr-lg-5">

                
                     
                    <div class=" px-0 mt-2">
                        <h5 class="text-primary bold-600 pb-3">{!! $campus->title !!}</h5>
                        <div class="rounded-medium ">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" >
                                    <a class="nav-link active py-3 text-primary" id="campus-particulars-tab" 
                                    data-toggle="tab" href="#campus-particulars" role="tab" aria-controls="campus-particulars" aria-selected="true"><h5>{{ label('lbl_particulars')}}</h5></a>
                                </li>
                                <li class="nav-item" >
                                    <a class="nav-link py-3 text-primary" id="course-offered-tab" 
                                    data-toggle="tab" href="#course-offered" role="tab" aria-controls="course-offered" aria-selected="true"><h5>{{ label('lbl_course_offered')}}</h5></a>
                                </li>
                                <li class="nav-item" >
                                    <a class="nav-link py-3 text-primary" id="student-services-tab" 
                                    data-toggle="tab" href="#student-services" role="tab" aria-controls="student-services" aria-selected="true"><h5>{{ label('lbl_student_services')}}</h5></a>
                                </li>
                                <li class="nav-item" >
                                    <a class="nav-link py-3 text-primary" id="facilities-tab" 
                                    data-toggle="tab" href="#facilities" role="tab" aria-controls="facilities" aria-selected="true"><h5>{{ label('lbl_facilities')}} </h5></a>
                                </li>
                                <li class="nav-item" >
                                    <a class="nav-link py-3 text-primary" id="contacts-tab" 
                                    data-toggle="tab" href="#contacts" role="tab" aria-controls="contacts" aria-selected="true"><h5>{{ label('lbl_contacts')}}</h5></a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active bg-white" id="campus-particulars" role="tabpanel" aria-labelledby="campus-particulars-tab">{!! $campus->particulars !!} <br><br></div>
                                <div class="tab-pane fade bg-white" id="course-offered" role="tabpanel" aria-labelledby="course-offered-tab">{!! $campus->course_offered !!}</div>
                                <div class="tab-pane fade bg-white" id="student-services" role="tabpanel" aria-labelledby="student-services-tab">{!! $campus->student_services !!}</div>
                                <div class="tab-pane fade bg-white" id="facilities" role="tabpanel" aria-labelledby="facilities-tab">{!! $campus->facilities !!}</div>
                                <div class="tab-pane fade bg-white" id="contacts" role="tabpanel" aria-labelledby="contacts-tab">{!! $campus->contacts !!}</div>
                            </div>
                        </div>
                    </div>
                    
                

            </div>
            <div class="col-lg-4 px-0">
                @include("site.includes.home.campuses")
            </div>
        </div>
        
    </div>

</div>

@stop

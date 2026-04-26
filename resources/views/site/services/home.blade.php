@extends('site.layout')
@section('title')
    {{ label('lbl_site_title') }} - {{ label('lbl_home') }}
@endsection


@section('content')


    <div class="bg-white p-0 ">
        <div class="row page-section landing-section align-items-stretch bg-light mx-0">
            @if (count($slideshow))
                @include("site.includes.home.slide_show")
            @endif

            @if ($dg)
            @include("site.includes.home.secretary")
            @endif
        </div>
    </div>
    @if (count($news_list) || count($publications) || count($recent_announcements))

        <div class="row page-section py-3 pb-lg-5mx-0 px-lg-4 bg-light-dark has-ripple-bgbb">
            <!-- <div class="ripple-bg" data-src="images/bg/bg1.jpg"> </div> -->
            <div class="px-lg-5 px-3 pb-lg-4 col-12">
                <div class="row py-3 py-md-0">
                    @if (count($recent_announcements))
                        <div class="col-lg-4 py-4 py-lg-0 lines-section section-heading bg-whiteee rounded-left-medium">
                            @include('site.includes.home.announcements')
                        </div>
                    @endif

                    @if (count($short_courses)) {{-- short short_courses --}}
                        <div class="col-lg-4 py-4 py-lg-0 lines-section section-heading bg-lighttt"
                            style="position: relative; z-index: 4;">
                            <div class="h-100 d-flex flex-column" data-aos="zoom-in">
                                <a href="{{ url('short_courses') }}" class="d-block">
                                    <h5 class="py-3 pb-lg-3 section-heading border-bottom-primary-fadedddd">
                                        <span class="text-dark text-bold py-1 d-inline-block lines position-relative">
                                            <div class="p-sm-2 py-1 text d-inline-flex align-items-center">
                                                <span class="round box-50 bg-primary flex-center text-white mr-2 "> 
                                                    <i class="fas fa-graduation-cap align-self-center" style="font-size: 30px;"></i>
                                                </span>
                                                {{label('lbl_up_coming_short_courses')}}
                                            </div>
                                            <span class="position-absolute view-all small">
                                                <i class="fa fa-arrow-right"> </i> <span class="pl-2 more d-inline-block" style=" white-space: nowrap;">{{label('lbl_View_more')}}</span>
                                            </span>
                                        </span>
                                    </h5>
                                </a>
                                @foreach ($short_courses as $course)

                                    <div class="col px-0 pb-1">
                                        <div
                                            class="d-flex  text-hover-primary align-items-center bg-white h-100 w-100 p-2 pointer-hover slide-hover box-shadow border-right-primary-thick-faded border position-relative">
                                            <a href="{{ url('short_courses/' . $course->slug) }}" class="d-flex w-100 align-items-center event-hover">
                                                <div
                                                    class="calendar-pad-2 position-relative p-1 overflow-hidden  bg-primary">
                                                    <div class="event-date ">
                                                        <div class="date-day text-center"> {{ \Carbon\Carbon::parse($course->created_at)->format('d') }} </div>
                                                        <div class="date-month text-center text-bold"> {{ \Carbon\Carbon::parse($course->created_at)->format('M y') }}</div>
                                                    </div>
                                                    <div class="position-absolute h-100 w-100"><i
                                                            class="fa fa-arrow-right"> </i> </div>
                                                </div>
                                                <div class="col p-2">
                                                    <div class="bold-600"> {!! str_limit(strip_tags($course->title), 120) !!} </div>
                                                </div>
                                            </a>
                                            <div class="small faded text-right position-absolute w-100 item-date">
                                                {!! date('d M, Y', strtotime($course->start_date)) !!}</div>
                                        </div>
                                    </div>
                                @endforeach
                                <div class="col rounded d-flex align-items-end justify-content-center p-1 pt-4">
                                    <a href="{{ url('short_courses') }}" class="text-primary text-hover-primary-dark text-bold readmore">
                                    <span>{{label('lbl_more_short_courses')}}</span>
                                    <i class="fa fa-arrow-right"> </i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endif

                    @if (count($publications)) {{-- downloads --}}
                        <div class="col-lg-4 py-4 py-lg-0 lines-section section-heading bg-whiteee rounded-right-medium">
                            <div class="h-100 d-flex flex-column" data-aos="zoom-in">
                                <a href="{{ url('publications') }}" class="d-block">
                                    <h5 class="py-3 pb-lg-3 section-heading border-bottom-primary-fadedddd">
                                        <span class="text-dark text-bold py-1 d-inline-block lines position-relative">
                                            <div class="p-sm-2 py-1 text d-inline-flex align-items-center">
                                                <span class="round box-50 bg-primary flex-center text-white mr-2 "> 
                                                    <i class="fa fa-download align-self-center"></i>
                                                </span>
                                                {{ label('Downloads') }}
                                            </div>
                                            <span class="position-absolute view-all small">
                                                <i class="fa fa-arrow-right"> </i> 
                                                <span class="pl-2 more d-inline-block"style=" white-space: nowrap;">{{label('lbl_View_more')}}</span> 
                                            </span>
                                        </span>
                                    </h5>
                                </a>
                                <?php $i = 0;  ?>
                                @foreach ($publications as $publication)
                                @if($i < 3)
                                    <div class="col px-0 py-1 border-bottom-accent-thin-faded no-border-last has-new-blink">
                                       
                                    <div
                                            class=" text-hover-primary d-flex align-items-center  h-100 w-100 p-2 pointer-hover  position-relative mb-1">
                                           
                                            <a href="{!! asset('uploads/documents/'.$publication->file) !!}" target="_blank" rel="noopener noreferrer" class="py-3 d-flex w-100 list-item  align-items-center">
                                                <i
                                                    class="fa fa-file-download pr-4 text-primary align-self-center "></i>
                                                <i class="fa fa-file-pdf pr-4 text-muted align-self-center text-lg"></i>
                                                <div class="">
                                                    <div class="bold-600 faded ">{!! date('d M, Y', strtotime($publication->published_date)) !!}</div>
                                                    <div class="bold-600 "> {!! str_limit(strip_tags($publication->title), 120) !!} </div>
                                                </div>
                                            </a>
                                           
                                            <!-- <div class="small text-muted text-right position-absolute w-100 item-date">27 Jan, 2021</div>                   -->
                                        </div>
                                    </div>
                                    @endif
                                            <?php $i++ ?>
                                @endforeach
                                <div class="col rounded d-flex align-items-end justify-content-center p-1 pt-4">
                                    <a href="{{ url('publications') }}" class="text-primary text-hover-primary-dark  text-bold readmore">
                                    <span>{{label('lbl_more_publication')}}</span>
                                    <i class="fa fa-arrow-right"> </i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endif

                </div>

            </div>
        </div>
    @endif
    @if (count($howdois) || count($online_services) || count($campuses))
        <div class=" page-section py-4 p-lg-5 mx-0 ">
            <div class="row mx-0 px-0">
                @if (count($online_services))
                    <div class="col-lg-4 py-4 py-lg-0 lines-section section-heading">
                        <div class="h-100 d-flex flex-column" data-aos="zoom-in">
                            <a href="{{ url('online-services') }}" class="d-block">
                                <h5 class="pb-3 pb-lg-3 section-heading">
                                    <span class="text-primary text-bold py-1 d-inline-block lines position-relative">
                                        <div class="p-sm-2 py-1 text">
                                            <i class="fa fa-globe pr-2  align-self-center"></i>
                                            {{ label('lbl_online_services') }}
                                        </div>
                                        <span class="position-absolute small view-all">
                                        <i class="fa fa-arrow-right"> </i> <span class="pl-2 more d-inline-block"
                        style="white-space: nowrap;">{{ label('lbl_view_all') }}</span>
                                        </span>
                                    </span>
                                </h5>
                            </a>
                            @foreach ($online_services as $online_service)
                                <div class="col px-0 pb-1 rounded-slight my-lst">
                                    <div
                                        class="d-flex align-items-center bg-light box-shadow  rounded-slight  h-100 w-100 p-2 pointer-hover  position-relative">
                                        <a href="{{ url($online_service->url) }}" target="_blank"
                                            rel="noopener noreferrer"
                                            class="d-flex w-100 h-100 list-item  align-items-center">
                                            <i
                                                class="fa fa-angle-double-right  px-2 pr-3  text-faded text-secondary align-self-center"></i>
                                            <i
                                                class="fa fa-bullseye px-2 pr-3  text-faded text-secondary align-self-center"></i>
                                            <span class="d-inline-block text-gray">
                                                <div> {{ $online_service->title }} </div>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif
                @if (count($campuses)) {{-- campuses --}}
                <div class="col-lg-4 py-4 py-lg-0 lines-section section-heading">
                    @include("site.includes.home.campuses")
                </div>
                @endif

                @if (count($news_list))
                    <div class="col-lg-4 py-4 py-lg-0 lines-section section-heading bg-white rounded-medium">
                        @include('site.includes.home.news')
                    </div>
                @endif
            </div>
        </div>
    @endif

    @if(count($quotations))
    <div class="bg-white">
      <div class="container pb-4 mb-4 has-show-on-hover position-relative"  style="min-height:300px;max-width:840px">
                <h5 class="text-center  pb-lg-5 text-uppercase section-heading bg-white-transparent-hover-secondary "> 
                    <a href="#" class="text-center  py-1  d-inline-block lines position-relative">
                        <div class="pr-sm-2 py-1 text-primary  d-inline-block position-relative"> 
                            <!-- <i class="fa fa-cog pr-2  align-self-center"></i>  -->
                            <span class="border-left-secondary-thick pl-2">{{label('What Our ALumni Has to Say')}}</span> 
                            <span class="position-absolute view-all">
                            <!-- <i class="fa fa-arrow-right"> </i> -->
                            <!-- <span class="text-small text-nowrap d-inline-block pl-2 ">View All </span>  -->
                            </span>
                        </div>
                    </a>                
                </h5>  
                <div class="swiper mySwiper  pt-5 pr-lg-2 pb-0">
                    <div class="swiper-wrapper  pt-3">
                        @foreach($quotations as $key => $quote) 
                        <a href="{{url('/quotations/'.$quote->slug)}}" class="d-block swiper-slide overflow-visible">
                            <div class="img img-1 background-image " 
                                  style="background:#666666; background-image:url('{{asset('uploads/quotations/'.$quote->photo_url)}}');">
                            </div>
                            <div class="p-3 px-md-4 pb-0 position-relative text-center" style=" margin-top:75px" > 
                            <div class="mb-2 text-secondary">{{str_limit($quote->title,40)}}</div>
                            <div class="px-md-3 swiper-description">{!! str_limit(strip_tags($quote->content),250) !!}</div>
                            </div>
                        </a>
                        @endforeach
                    </div>
                </div>
                <div class="position-absolute show-on-hover w-100 bg-danger swiper-navigations">
                    <span class="hover-icon-left full-opacity-on-hover swiper-prev float-left ml-3">
                        <div class="icon box-30"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6">
                        <polygon class="fill-primary"  points="52.51 45.8 77.5 2.5 2.5 45.8 77.5 89.1 52.51 45.8"/></svg>
                        </div>
                    </span>
                    <span class="hover-icon-right  full-opacity-on-hover swiper-next float-right mr-3 ">
                        <div class="icon box-30 "> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6">
                        <polygon class="fill-primary" points="27.49 45.8 2.5 2.5 77.5 45.8 2.5 89.1 27.49 45.8"/></svg>
                        </div>
                    </span>
                </div>
                <div class="w-100 mt-4 d-flex justify-content-center align-items-center">
                @foreach($quotations as $quote)
                    <span class="swiper-indicator mx-1"></span>
                @endforeach
        </div>
    </div> 
    @endif

    @include('site.includes.modals.profile_modal')
@stop


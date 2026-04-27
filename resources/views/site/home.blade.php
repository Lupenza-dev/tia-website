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

            {{-- @if ($dg)
            @include("site.includes.home.secretary")
            @endif --}}
        </div>
    </div>

    {{-- CEO Message & Info Section --}}
    <div class="py-4" style="background-color: #f8f9fa;">
        <div class="container">
            <div class="row">
                {{-- CEO Message --}}
                @if ($dg)
                <div class="col-md-4 mb-4 mb-md-0">
                    <div class="bg-white h-100 p-4 text-center" style="border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.08); border-top: 3px solid #149246;">
                        <div class="text-center mb-3">
                            <h6 class="font-weight-bold mb-0" style="color: #2156a7;">
                                <i class="fa fa-user-tie mr-2" style="color: #149246;"></i>CEO Message
                            </h6>
                        </div>
                        <div style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 0 auto; box-shadow: 0 4px 10px rgba(0,0,0,0.1);">
                            <img src="{{ asset('uploads/administration/' . $dg->photo_url) }}"
                                 alt="{{ $dg->fullname }}"
                                 style="width: 100%; height: 100%; object-fit: cover;">
                        </div>
                        <h6 class="font-weight-bold mt-3 mb-1" style="color: #2156a7;">{{ $dg->fullname }}</h6>
                        <p class="text-muted mb-3" style="font-size: 13px;">{{ $dg->title }}</p>
                        <span style="font-size: 32px; line-height: 1; color: #149246; font-family: Georgia, serif;">&ldquo;</span>
                        <p class="mb-3" style="font-size: 14px; line-height: 1.7; color: #555;">
                            {!! str_limit(strip_tags($dg->content), 200) !!}
                        </p>
                        <a href="{{ url('administration/' . $dg->slug) }}" class="font-weight-bold" style="color: #149246; text-decoration: none; font-size: 14px;">
                            Read Full Message <i class="fa fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </div>
                @endif

                {{-- Announcements + Events stacked --}}
                <div class="col-md-4 mb-4 mb-md-0 d-flex flex-column">
                    {{-- Announcements --}}
                    <div class="bg-white p-4 mb-3" style="border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.08); border-top: 3px solid #2156a7;">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h6 class="font-weight-bold mb-0" style="color: #2156a7;">
                                <i class="fa fa-bullhorn mr-2" style="color: #149246;"></i>Announcements
                            </h6>
                            <a href="{{ url('announcements') }}" class="font-weight-bold" style="color: #149246; text-decoration: none; font-size: 13px;">
                                View All <i class="fa fa-arrow-right ml-1"></i>
                            </a>
                        </div>
                        @foreach ($recent_announcements->take(4) as $announcement)
                        <a href="{{ url('announcements/' . $announcement->slug) }}" class="d-flex align-items-start py-2 text-decoration-none" style="border-bottom: 1px solid #eee;">
                            <div class="mr-3 mt-1 flex-shrink-0">
                                <div class="d-flex align-items-center justify-content-center" style="width: 32px; height: 32px; border-radius: 50%; background-color: rgba(20,146,70,0.1);">
                                    <i class="fa fa-bullhorn" style="color: #149246; font-size: 13px;"></i>
                                </div>
                            </div>
                            <div>
                                <p class="mb-0 font-weight-bold" style="font-size: 13px; color: #333; line-height: 1.4;">
                                    {!! str_limit(strip_tags($announcement->name), 80) !!}
                                </p>
                                <small class="text-muted" style="font-size: 12px;">
                                    <i class="fa fa-calendar-alt mr-1"></i>{{ date('d M, Y', strtotime($announcement->created_at)) }}
                                </small>
                            </div>
                        </a>
                        @endforeach
                    </div>

                    {{-- Events --}}
                    <div class="bg-white p-4 flex-grow-1" style="border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.08); border-top: 3px solid #efe923;">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h6 class="font-weight-bold mb-0" style="color: #2156a7;">
                                <i class="fa fa-calendar-check mr-2" style="color: #efe923;"></i>Upcoming Events
                            </h6>
                            <a href="{{ url('events') }}" class="font-weight-bold" style="color: #efe923; text-decoration: none; font-size: 13px;">
                                View All <i class="fa fa-arrow-right ml-1"></i>
                            </a>
                        </div>
                        @foreach ($events->take(3) as $event)
                        <a href="{{ url('events/' . $event->slug) }}" class="d-flex align-items-start py-2 text-decoration-none" style="border-bottom: 1px solid #eee;">
                            <div class="mr-3 flex-shrink-0 text-center" style="min-width: 46px;">
                                <div style="background: linear-gradient(135deg, #2156a7, #1a4480); border-radius: 8px; padding: 4px 8px; line-height: 1.1;">
                                    <span class="d-block font-weight-bold" style="font-size: 18px; color: #fff;">{{ date('d', strtotime($event->event_date)) }}</span>
                                    <span class="d-block text-uppercase" style="font-size: 10px; color: rgba(255,255,255,0.8); letter-spacing: 0.05em;">{{ date('M', strtotime($event->event_date)) }}</span>
                                </div>
                            </div>
                            <div>
                                <p class="mb-1 font-weight-bold" style="font-size: 13px; color: #333; line-height: 1.4;">
                                    {!! str_limit(strip_tags($event->title), 70) !!}
                                </p>
                                <small class="text-muted" style="font-size: 11px;">
                                    <i class="fa fa-clock mr-1" style="color: #efe923;"></i>{{ $event->event_time }}
                                    <span class="mx-1">|</span>
                                    <i class="fa fa-map-marker-alt mr-1" style="color: #efe923;"></i>{{ $event->location }}
                                </small>
                            </div>
                        </a>
                        @endforeach
                    </div>
                </div>

                {{-- News --}}
                <div class="col-md-4 mb-4 mb-md-0">
                    <div class="bg-white h-100 p-4" style="border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.08); border-top: 3px solid #149246;">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h6 class="font-weight-bold mb-0" style="color: #2156a7;">
                                <i class="fa fa-newspaper mr-2" style="color: #149246;"></i>News
                            </h6>
                            <a href="{{ url('news') }}" class="font-weight-bold" style="color: #149246; text-decoration: none; font-size: 13px;">
                                View All <i class="fa fa-arrow-right ml-1"></i>
                            </a>
                        </div>
                        @foreach ($news_list->take(4) as $news)
                        <a href="{{ url('news/' . $news->slug) }}" class="d-flex align-items-start py-2 text-decoration-none" style="border-bottom: 1px solid #eee;">
                            <div class="mr-3 flex-shrink-0" style="width: 70px; height: 55px; border-radius: 6px; overflow: hidden;">
                                <img src="{{ asset('uploads/news/' . $news->photo_url) }}" alt="{{ $news->title }}" style="width: 100%; height: 100%; object-fit: cover;">
                            </div>
                            <div>
                                <p class="mb-1 font-weight-bold" style="font-size: 13px; color: #333; line-height: 1.4;">
                                    {!! str_limit(strip_tags($news->title), 60) !!}
                                </p>
                                <p class="mb-0" style="font-size: 12px; color: #777; line-height: 1.4;">
                                    {!! str_limit(strip_tags($news->content), 50) !!}
                                </p>
                                <small class="text-muted" style="font-size: 11px;">
                                    <i class="fa fa-calendar-alt mr-1"></i>{{ date('d M, Y', strtotime($news->created_at)) }}
                                </small>
                            </div>
                        </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Search Program & Partners Section --}}
    <div class="py-5" style="background: linear-gradient(135deg, #2156a7 0%, #149246 100%);">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-8 text-center mb-4 mb-md-0">
                    <h4 class="text-white font-weight-bold mb-2">{{ label('lbl_find_program') }}</h4>
                    <p class="mb-4" style="color: rgba(255,255,255,0.85); font-size: 15px;">{{ label('lbl_search_program_description') }}</p>
                    <form method="GET" action="{{ url('search') }}" class="d-flex justify-content-center">
                        <div class="input-group" style="max-width: 550px; box-shadow: 0 4px 15px rgba(0,0,0,0.2); border-radius: 50px; overflow: hidden;">
                            <input type="text" name="q" class="form-control border-0 px-4 py-3" placeholder="Search programs..." style="font-size: 15px; height: auto;">
                            <div class="input-group-append">
                                <button type="submit" class="btn px-4" style="background-color: #149246; color: #fff; border: none; font-weight: bold; font-size: 15px;">
                                    <i class="fa fa-search mr-2"></i>{{label('lbl_search')}}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-4">
                    <h6 class="text-white font-weight-bold text-center mb-3">{{ label('lbl_partners') }}</h6>
                    <div style="overflow: hidden; background: rgba(255,255,255,0.15); border-radius: 8px; padding: 20px 0;">
                        <div style="display: flex; animation: marqueeLeft 15s linear infinite; white-space: nowrap;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 1" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 2" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 3" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 4" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 1" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 2" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 3" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                            <img src="{{asset('site/images/tia_logo.png')}}" alt="Partner 4" style="height: 60px; margin: 0 20px; background: #fff; padding: 8px 12px; border-radius: 6px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        @keyframes marqueeLeft {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }
    </style>
    {{-- Student Testimonials Section --}}
    <div class="py-5 position-relative overflow-hidden" style="background: #CBCBCB;">
        {{-- Decorative background elements --}}
        <div style="position: absolute; top: -50px; left: -50px; width: 200px; height: 200px; border-radius: 50%; background: rgba(20,146,70,0.05);"></div>
        <div style="position: absolute; bottom: -30px; right: -30px; width: 150px; height: 150px; border-radius: 50%; background: rgba(33,86,167,0.05);"></div>
        <div style="position: absolute; top: 40%; right: 5%; width: 80px; height: 80px; border-radius: 50%; background: rgba(20,146,70,0.04);"></div>

        <div class="container position-relative" style="z-index: 1;">
            <div class="text-center mb-5">
                {{-- <span class="d-inline-block px-3 py-1 mb-2" style="background: rgba(20,146,70,0.1); border-radius: 20px; color: #149246; font-size: 13px; font-weight: 600; letter-spacing: 1px;">TESTIMONIALS</span> --}}
                <h3 class="font-weight-bold" style="color: #2156a7;">{{ label('lbl_alumnae_say')}}</h3>
                <div class="d-flex align-items-center justify-content-center mt-2">
                    <div style="width: 40px; height: 2px; background-color: #2156a7;"></div>
                    <div style="width: 12px; height: 12px; border: 2px solid #149246; border-radius: 50%; margin: 0 8px;"></div>
                    <div style="width: 40px; height: 2px; background-color: #2156a7;"></div>
                </div>
                <p class="mt-2 text-muted" style="font-size: 14px;">{{ label('lbl_alumnae_text')}}</p>
            </div>
            <div id="testimonialCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
                <div class="carousel-inner">
                    {{-- Slide 1 --}}
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-4 px-3 mb-3">
                                <div class="text-center p-4 h-100 position-relative" style="background: #fff; border-radius: 12px; box-shadow: 0 3px 15px rgba(0,0,0,0.08); border: 1px solid #eee; transition: transform 0.3s;">
                                    <div style="position: absolute; top: 15px; left: 20px; font-size: 40px; color: rgba(20,146,70,0.15); font-family: Georgia, serif; line-height: 1;">&ldquo;</div>
                                    <div style="width: 85px; height: 85px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 0 auto; box-shadow: 0 3px 10px rgba(20,146,70,0.2);">
                                        <img src="{{asset('site/images/student.png')}}" alt="Student" style="width: 100%; height: 100%; object-fit: cover;">
                                    </div>
                                    <h6 class="font-weight-bold mt-3 mb-0" style="color: #2156a7;">John Mwamba</h6>
                                    <small style="color: #149246; font-weight: 600;">Diploma in Accountancy</small>
                                    <p style="font-size: 13px; color: #555; line-height: 1.7;">"TIA gave me the practical skills and confidence I needed to excel in my career. The lecturers are supportive and the environment is conducive for learning."</p>
                                </div>
                            </div>
                            <div class="col-md-4 px-3 mb-3">
                                <div class="text-center p-4 h-100 position-relative" style="background: #fff; border-radius: 12px; box-shadow: 0 3px 15px rgba(0,0,0,0.08); border: 1px solid #eee; transition: transform 0.3s;">
                                    <div style="position: absolute; top: 15px; left: 20px; font-size: 40px; color: rgba(20,146,70,0.15); font-family: Georgia, serif; line-height: 1;">&ldquo;</div>
                                    <div style="width: 85px; height: 85px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 0 auto; box-shadow: 0 3px 10px rgba(20,146,70,0.2);">
                                        <img src="{{asset('site/images/student.png')}}" alt="Student" style="width: 100%; height: 100%; object-fit: cover;">
                                    </div>
                                    <h6 class="font-weight-bold mt-3 mb-0" style="color: #2156a7;">Grace Kileo</h6>
                                    <small style="color: #149246; font-weight: 600;">Diploma in Procurement</small>
                                    <p style="font-size: 13px; color: #555; line-height: 1.7;">"The quality of education at TIA is outstanding. I was well prepared for the job market and landed my dream position within months of graduating."</p>
                                </div>
                            </div>
                            <div class="col-md-4 px-3 mb-3">
                                <div class="text-center p-4 h-100 position-relative" style="background: #fff; border-radius: 12px; box-shadow: 0 3px 15px rgba(0,0,0,0.08); border: 1px solid #eee; transition: transform 0.3s;">
                                    <div style="position: absolute; top: 15px; left: 20px; font-size: 40px; color: rgba(20,146,70,0.15); font-family: Georgia, serif; line-height: 1;">&ldquo;</div>
                                    <div style="width: 85px; height: 85px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 0 auto; box-shadow: 0 3px 10px rgba(20,146,70,0.2);">
                                        <img src="{{asset('site/images/student.png')}}" alt="Student" style="width: 100%; height: 100%; object-fit: cover;">
                                    </div>
                                    <h6 class="font-weight-bold mt-3 mb-0" style="color: #2156a7;">Hassan Mchome</h6>
                                    <small style="color: #149246; font-weight: 600;">Diploma in IT</small>
                                    <p style="font-size: 13px; color: #555; line-height: 1.7;">"TIA's hands-on approach to teaching technology skills made all the difference. The labs and resources available are truly world-class."</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- Slide 2 --}}
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-4 px-3 mb-3">
                                <div class="text-center p-4 h-100 position-relative" style="background: #fff; border-radius: 12px; box-shadow: 0 3px 15px rgba(0,0,0,0.08); border: 1px solid #eee; transition: transform 0.3s;">
                                    <div style="position: absolute; top: 15px; left: 20px; font-size: 40px; color: rgba(20,146,70,0.15); font-family: Georgia, serif; line-height: 1;">&ldquo;</div>
                                    <div style="width: 85px; height: 85px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 0 auto; box-shadow: 0 3px 10px rgba(20,146,70,0.2);">
                                        <img src="{{asset('site/images/student.png')}}" alt="Student" style="width: 100%; height: 100%; object-fit: cover;">
                                    </div>
                                    <h6 class="font-weight-bold mt-3 mb-0" style="color: #2156a7;">Amina Juma</h6>
                                    <small style="color: #149246; font-weight: 600;">Diploma in Human Resource</small>
                                    <p style="font-size: 13px; color: #555; line-height: 1.7;">"I am grateful for the mentorship and career guidance I received at TIA. It shaped my professional journey and opened doors I never imagined."</p>
                                </div>
                            </div>
                            <div class="col-md-4 px-3 mb-3">
                                <div class="text-center p-4 h-100 position-relative" style="background: #fff; border-radius: 12px; box-shadow: 0 3px 15px rgba(0,0,0,0.08); border: 1px solid #eee; transition: transform 0.3s;">
                                    <div style="position: absolute; top: 15px; left: 20px; font-size: 40px; color: rgba(20,146,70,0.15); font-family: Georgia, serif; line-height: 1;">&ldquo;</div>
                                    <div style="width: 85px; height: 85px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 0 auto; box-shadow: 0 3px 10px rgba(20,146,70,0.2);">
                                        <img src="{{asset('site/images/student.png')}}" alt="Student" style="width: 100%; height: 100%; object-fit: cover;">
                                    </div>
                                    <h6 class="font-weight-bold mt-3 mb-0" style="color: #2156a7;">Peter Laizer</h6>
                                    <small style="color: #149246; font-weight: 600;">Diploma in Marketing</small>
                                    <p style="font-size: 13px; color: #555; line-height: 1.7;">"The practical exposure and industry connections at TIA helped me build a strong foundation. I would recommend TIA to any aspiring professional."</p>
                                </div>
                            </div>
                            <div class="col-md-4 px-3 mb-3">
                                <div class="text-center p-4 h-100 position-relative" style="background: #fff; border-radius: 12px; box-shadow: 0 3px 15px rgba(0,0,0,0.08); border: 1px solid #eee; transition: transform 0.3s;">
                                    <div style="position: absolute; top: 15px; left: 20px; font-size: 40px; color: rgba(20,146,70,0.15); font-family: Georgia, serif; line-height: 1;">&ldquo;</div>
                                    <div style="width: 85px; height: 85px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 0 auto; box-shadow: 0 3px 10px rgba(20,146,70,0.2);">
                                        <img src="{{asset('site/images/student.png')}}" alt="Student" style="width: 100%; height: 100%; object-fit: cover;">
                                    </div>
                                    <h6 class="font-weight-bold mt-3 mb-0" style="color: #2156a7;">Neema Swai</h6>
                                    <small style="color: #149246; font-weight: 600;">Diploma in Banking & Finance</small>
                                    <p style="font-size: 13px; color: #555; line-height: 1.7;">"Studying at TIA was life-changing. The curriculum is relevant, the staff is dedicated, and the campus life is vibrant and enriching."</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-4">
                    <a class="d-inline-flex align-items-center justify-content-center mr-2" href="#testimonialCarousel" role="button" data-slide="prev" style="width: 40px; height: 40px; border-radius: 50%; background: #2156a7; color: #fff; font-size: 16px; text-decoration: none;">
                        <i class="fa fa-chevron-left"></i>
                    </a>
                    <ol class="carousel-indicators d-inline-flex position-relative m-0 align-middle" style="top: auto; bottom: auto;">
                        <li data-target="#testimonialCarousel" data-slide-to="0" class="active" style="width: 30px; height: 4px; border-radius: 2px; background-color: #149246; margin: 0 4px;"></li>
                        <li data-target="#testimonialCarousel" data-slide-to="1" style="width: 30px; height: 4px; border-radius: 2px; background-color: #ccc; margin: 0 4px;"></li>
                    </ol>
                    <a class="d-inline-flex align-items-center justify-content-center ml-2" href="#testimonialCarousel" role="button" data-slide="next" style="width: 40px; height: 40px; border-radius: 50%; background: #149246; color: #fff; font-size: 16px; text-decoration: none;">
                        <i class="fa fa-chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <style>
        .testimonial-card:hover { transform: translateY(-5px); }
    </style>


    {{-- @if(count($quotations))
    @include('site.includes.quotes')
    @endif --}}

    {{-- @include('site.includes.modals.profile_modal') --}}
@stop


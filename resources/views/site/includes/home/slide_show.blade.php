<div class="col-lg-12 px-0">
    <div class="home-slider position-relative">

        @if ($headquarter)
            @if ($headquarter->toll_free)
                <a href="tel:{{ $headquarter->toll_free }}"
                    class="d-none d-lg-inline-flex align-items-center position-absolute text-white text-bold"
                    style="z-index: 20; top: 20px; right: 20px; background: rgba(20,146,70,0.9); padding: 10px 20px; border-radius: 30px; text-decoration: none; backdrop-filter: blur(5px); box-shadow: 0 3px 15px rgba(0,0,0,0.2);">
                    <div class="d-flex align-items-center justify-content-center mr-2" style="width: 35px; height: 35px; background: #fff; border-radius: 50%;">
                        <i class="fa fa-phone" style="color: #149246; font-size: 14px;"></i>
                    </div>
                    <div>
                        <div style="font-size: 11px; opacity: 0.9; letter-spacing: 0.5px;">{{ label('lbl_toll_free') }}</div>
                        <span style="font-size: 15px; font-weight: 700;">{{ $headquarter->toll_free }}</span>
                    </div>
                </a>
            @endif
        @endif

        <div id="homeCarousel" class="carousel slide carousel-fade" style="height: 500px;"
            data-ride="carousel" data-interval="5000" data-pause="hover">

            {{-- Progress-style indicators --}}
            <ol class="carousel-indicators mb-0" style="bottom: 20px; z-index: 15;">
                @foreach ($slideshow as $key => $photo)
                    <li data-target="#homeCarousel" data-slide-to="{{ $key }}"
                        @if ($key == 0) class="active" @endif
                        style="width: 35px; height: 4px; border-radius: 2px; border: none; margin: 0 4px; opacity: 0.6; background: #fff; transition: all 0.4s;"></li>
                @endforeach
            </ol>

            <div class="carousel-inner" style="height: 100%;">
                @foreach ($slideshow as $key => $photo)
                    <div class="carousel-item @if ($key == 0) active @endif" style="height: 500px;">
                        <div class="position-relative" style="height: 100%;">
                            <img class="w-100" style="height: 100%; object-fit: cover;" src="{{ asset('uploads/gallery/' . $photo->filename) }}"
                                alt="{{ strip_tags($photo->content) }}">
                            {{-- Gradient overlay --}}
                            <div class="position-absolute w-100 h-100" style="top: 0; left: 0; background: linear-gradient(to bottom, rgba(0,0,0,0.1) 0%, rgba(0,0,0,0.05) 40%, rgba(0,0,0,0.6) 100%);"></div>
                            <div class="position-absolute w-100" style="background: linear-gradient(to right, rgba(33,86,167,0.85), rgba(20,146,70,0.75)); bottom: 0; left: 0; right: 0; padding: 14px 25px 40px; z-index: 10; backdrop-filter: blur(3px);">
                                <div class="container d-flex align-items-center slide-caption">
                                    <div class="slide-accent" style="width: 4px; height: 22px; background: #fff; border-radius: 2px; margin-right: 15px; flex-shrink: 0;"></div>
                                    <a href="javascript:" class="d-block text-white slide-text" style="font-size: 15px; font-weight: 500; letter-spacing: 0.3px; line-height: 1.5;">{!! strip_tags($photo->content) !!}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            {{-- Styled navigation arrows --}}
            <a class="carousel-control-prev d-none d-md-flex align-items-center justify-content-center" href="#homeCarousel" role="button" data-slide="prev"
                style="width: 50px; height: 50px; top: 50%; left: 20px; bottom: auto; transform: translateY(-50%); background: rgba(255,255,255,0.15); border-radius: 50%; backdrop-filter: blur(5px); opacity: 1; transition: all 0.3s;">
                <span class="fa fa-chevron-left text-white" style="font-size: 16px;" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next d-none d-md-flex align-items-center justify-content-center" href="#homeCarousel" role="button" data-slide="next"
                style="width: 50px; height: 50px; top: 50%; right: 20px; bottom: auto; transform: translateY(-50%); background: rgba(255,255,255,0.15); border-radius: 50%; backdrop-filter: blur(5px); opacity: 1; transition: all 0.3s;">
                <span class="fa fa-chevron-right text-white" style="font-size: 16px;" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>
</div>

<style>
    #homeCarousel .carousel-control-prev:hover,
    #homeCarousel .carousel-control-next:hover {
        background: rgba(255,255,255,0.3) !important;
    }
    #homeCarousel .carousel-indicators li.active {
        opacity: 1 !important;
        background: #149246 !important;
        width: 45px !important;
    }
    #homeCarousel .carousel-item {
        transition: opacity 0.8s ease-in-out !important;
    }

    /* Caption slide-in animation */
    @keyframes slideInLeft {
        from { opacity: 0; transform: translateX(-40px); }
        to   { opacity: 1; transform: translateX(0); }
    }
    @keyframes growDown {
        from { opacity: 0; transform: scaleY(0); }
        to   { opacity: 1; transform: scaleY(1); }
    }
    .carousel-item .slide-accent,
    .carousel-item .slide-text {
        opacity: 0;
    }
    .carousel-item.active .slide-accent {
        animation: growDown 0.4s ease-out 0.3s forwards;
        transform-origin: top;
    }
    .carousel-item.active .slide-text {
        animation: slideInLeft 0.5s ease-out 0.5s forwards;
    }
</style>
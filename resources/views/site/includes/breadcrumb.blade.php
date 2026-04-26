{{-- <div class="breadcumb-banner px-3 px-lg-5 position-relative green-zone" --}}
    {{-- @if($background) 
        style="background-image: url({{asset($background->banner_bg)}}); background-repeat: no-repeat; background-size: 100% auto; background-attachment: fixed;"
    @endif>  --}}

        {{-- style="background-image: url({{asset("site/images/bg/banner.png")}}); background-repeat: no-repeat; background-size: 100% auto; background-attachment: fixed;"> 

        <div class="road  position-absolute w-100" style="transform:scale(1,1); bottom:0; left:0;">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1871 153.59">
            <defs>
            <style>.clss-3{fill:#fff !important; stroke:rgba(230, 141, 8, 0) !important}.clss-4{fill:#fff; fill:#eee; opacity:0.5} .clss-5{fill:none;stroke:#fd8300;stroke-miterlimit:10;stroke-width:2px;}</style>
        </defs><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1">
            <path class="clss-5 path" d="M.11,80.53c171.28-19.08,324.69-38,497.21-33.25,11,1,28.67.95,42.77,4.31a20.93,20.93,0,0,1,15.67,24.79,41.5,41.5,0,0,0-1.25,11.23c1.68,36.24,61.38,35,88.76,38.45,52.61,4.41,105.31,2.34,157.86,0,358.26-22.09,713.63-70.28,1070-111.44"/>
            <path class="clss-3" d="M0,153.59V94.14s361-39.87,473.67-34c136.33,7,2.13,55.39,127.33,71.5,186.21,24,823.4-55.32,1270-103.09V153.59Z"/>
            <path class="clss-4" d="M1871,0C1474.53,36.76,1078.42,98.32,679.83,96.85c-16.65-1.83-46.37-2-66.73-9a23.64,23.64,0,0,1-15.33-27.54c1.5-6.65,2.83-13.42.35-20.48C586.63,9.71,542.69,11.27,516.05,8.28,343.77.41,171.44,16.12,0,32.25V67.19c170.73-19.08,342.64-38,514.61-33.26,10.93,1,28.58,1,42.63,4.32A20.93,20.93,0,0,1,572.86,63a41.46,41.46,0,0,0-1.24,11.22c1.67,36.24,48.18,39,75.47,42.46,52.44,4.4,105,2.34,157.36,0C1161.55,94.57,1515.79,42.38,1871,1.22Z"/></g></g></svg>
        </div> 
        <div class="banner mx-lg-4 d-inline-block  pb-1 pt-lg-5 pt-3 mt-2">  
            <div class="banner-inner ">
                <ol class="breadcrumb text-gray bg-none position-lg-relative" style="top:-2em">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}"><span class="fas fa-home"></span></a></li>
                    @yield('breadcrumb')
                </ol>
            </div>
        </div>
        <br>
        <h5 class="page-heading position-relative d-inline-block text-primary text-uppercase bold-600 px-3 px-lg-5 pt-md-3 pt-0 pb-0 my-0">
            <span class=""> @yield('page_title') </span> 
        </h5>
</div> --}}
<div class="breadcumb-banner px-3 px-lg-5 bg-light-darker breadcrumb-bg" 
@if($background) 
        style="background-image: url({{asset($background->banner_bg)}});"
    @else
style="background-image: url({{asset("site/images/bg/banner.png")}})"
@endif>  
    <div class="banner mx-lg-5 d-inline-block py-2">    
      <div class="banner-inner  ">
          <ol class="breadcrumb hover-bg-trans mb-0">
            <li class="breadcrumb-item"><a href="{{ url('/') }}"><span class="fas fa-home"></span></a></li>
  
            @yield('breadcrumb')
  
          </ol>
      </div>
    </div>
    <br>
    <h5 class="d-inline-block text-primary text-uppercase bold-600 px-3 px-lg-5 py-3 my-0 rounded-top bg-white mx-lg-5"><span> @yield('page_title')</span> </h5>
  </div>
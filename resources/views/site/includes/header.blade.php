<header class="col-12 px-0 mb-0">

  {{-- <div class="header-bg"></div> --}}
  <!-- top navbar -->
  <div class="col-12 top-navbar">
    <div class="px-0">
      <div class="top_nav px-0 w-100 d-flex justify-content-center">

        <div class="d-inline-block top-innerrrr rounded-bottom-medium px-5 mx-auto" style="background-color: #149246;">
          <ul class="d-inline list-inline">
            {{-- <li class="list-inline-item pr-2">
              <div class="search-form">
                <form class="form-inline py-0 mr-auto" method="GET" action="{{url('search')}}">
                  <input class="form-control mr-sm-2" placeholder="Search" aria-label="Search" type="search" name="q" @if(isset($term)) value="{{$term}}"@endif>
                  <button type="submit" class="search-icon">
                    <i class="fas fa-search fa-1x"></i>
                  </button>
                </form>
              </div>
            </li> --}}
            <li class="list-inline-item @if(curlang() == '_en') d-none @endif ">
              <a title="Switch Language to English" href="{{ url('language/en') }}">
                ENGLISH
              </a>
            </li>
            <li class="list-inline-item @if(curlang() == '_sw') d-none @endif">
              <a title="Soma kwa Kiswahili" href="{{ url('language/sw') }}">
                KISWAHILI
              </a>
            </li>
          </ul>
          <ul class="d-none d-lg-inline list-inline">
            {!! App\Models\MenuItem::getMenu('top_menu') !!}
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- /top navbar -->

  <!-- top middle -->
  <div class=" px-0 position-relative">

    <div class="col-md-12 mt-0 py-2 top-middle">
      <div class="container px-0">
        <div class="row ">
          <div class="col-2 float-left text-left my-auto">
            <a href="{{ url('/') }}"><img src="{{asset('site/images/emblem_new.png')}}" alt="Tanzania emblem" class="mx-auto img-fluid" width="100"/></a>
          </div>
  
          <div class="col-8 text-center text-accent my-auto">
            <h5 class="mb-1 d-none d-sm-block font-16 align-items-center">
              {!! (label("lbl_site_subtitle"))!!}
            </h5>  
            <h5 class="mb-1 d-none d-sm-block font-16 align-items-center">
              {!! (label("lbl_site_sub_subtitle"))!!}
            </h5>  
            <h3 class="mb-1 align-items-center text-accent font-weight-bold font-40  lowercase" >            
              {{ (label("lbl_site_title"))}} 
            </h3>
          </div>
          
  
          <div class="col-2 float-right text-right my-auto">
            <a href="{{ url('/') }}"><img src="{{asset('site/images/tia_logo.png')}}" alt="LATRA Logo" class="mx-auto img-fluid" width="110"/></a>
          </div>

        </div>
      </div>
    </div>
    <!-- /top middle -->
  
    <!-- top bottom -->
    <div class="col-12 main-nav-container border-top-primary px-0 position-relative text-white">
      <div class="col-md-12 col-xs-12 px-0 top-bottom " style="background-color: #2156a7">
        <nav class="navbar navbar-expand-lg p-0">
          <button class="navbar-toggler mr-auto"  type="button" data-toggle="collapse" 
            data-target="#middleNavbarMenu" aria-controls="middleNavbarMenu" aria-expanded="false"
            aria-label="Toggle navigation">
              <span class="fa fa-bars py-2" style="font-size:1.5em !important;"></span>
          </button>
  
          <div class="collapse navbar-collapse col-12 px-0" id="middleNavbarMenu">
            <ul  class="navbar-nav mr-auto nav-bottom-header justify-content-center d-flex col-12" >
              <li class="nav-item active">
                <a class="nav-link" href="{{ url('/').'/' }}">
                  <span class="mt-0 pt-0"> {{label('lbl_home')}} </span>
                </a>
              </li>
              
              {!! App\Models\MenuItem::getMenu('main_nav') !!}
  
              <!-- IDEA: to show top menu on bottom menu -->
              {!! App\Models\MenuItem::getMenu('sm_top_menu') !!}
             
            </ul>
          </div>
        </nav>
      </div>
    </div>
    <!-- /top bottom -->
    <!-- </div> -->
  </div>

 
</header>
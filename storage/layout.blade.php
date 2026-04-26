<!DOCTYPE html>
<html lang="{{ str_replace('_', '', curlang()) }}">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Language" content="{{ str_replace('_', '', curlang()) }}">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  @if (! empty($seo))
    <meta name="description" content="{{ $seo->content }}">
    <meta name="keywords" content="{{ $seo->keywords_en }} , {{ $seo->keywords_sw }} ">
  @endif
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
{{--  <meta name="theme-color" content="#3ea460">--}}
  <meta name="theme-color" content="#eee">
{{--  <meta name="apple-mobile-web-app-status-bar-style" content="#3ea460">--}}
  <meta name="apple-mobile-web-app-status-bar-style" content="#eee">

  <title> {{ label('lbl_site_title_short')}} | @yield('title')  </title>
  <script src="{{ asset('site/js/angular.min.js')}}"></script>
  <!-- favicons -->
  <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('site/images/icon/apple-icon-57x57.png')}}">
  <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('site/images/icon/apple-icon-60x60.png')}}">
  <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('site/images/icon/apple-icon-72x72.png')}}">
  <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('site/images/icon/apple-icon-76x76.png')}}">
  <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('site/images/icon/apple-icon-114x114.png')}}">
  <link rel="apple-touch-icon" sizes="120x120" href="{{asset('site/images/icon/apple-icon-120x120.png')}}">
  <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('site/images/icon/apple-icon-144x144.png')}}">
  <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('site/images/icon/apple-icon-152x152.png')}}">
  <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('site/images/icon/apple-icon-180x180.png')}}">
  <link rel="icon" type="image/png" sizes="192x192"  href="{{ asset('site/images/icon/android-icon-192x192.png')}}">
  <link rel="icon" type="image/png" sizes="32x32" href="{{asset('site/images/icon/favicon-32x32.png')}}">
  <link rel="icon" type="image/png" sizes="96x96" href="{{  asset('site/images/icon/favicon-96x96.png')}}">
  <link rel="icon" type="image/png" sizes="16x16" href="{{  asset('site/images/icon/favicon-16x16.png')}}">

{{--  <link rel="stylesheet" href="{{asset('site/css/aos.min.css')}}">--}}
  <link rel="stylesheet" href="{{asset('site/css/master.min.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/swiper.min.css')}}">

  <style type="text/css">
    /* for google iframe */
    .google-map iframe{
      height:100%;
      width:100%;
    }

    .my-lst > :hover {
  /*  transform: scale(1.04);*/
  cursor: pointer;
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
}

    /* control rending on rich text, for temporary use */
    .rich-text img{
      max-width: 100% !important;
      height: auto !important;
    }
    .rich-text table{
      max-width: 100% !important;
    }
    .rich-text a{
      color: #0070ff !important;
    }

    /* styles for chatbot */
    .chatbot-body{ 
      transition: height 0.3s, max-height 0.3s, min-height 0.3s,padding-top 0.35s, padding-bottom 0.35s;
      max-height:0;
      padding-top:0 !important;
      padding-bottom:0 !important;
      box-sizing: border-box;
    }
    .chatbot-body.active{
      max-height:600px;
      padding-top:2em !important;
      padding-bottom:2em !important;
    }
    .chatbot-toggle {
      background:rgba(0,0,0,0);
      transition:background 0.3s;
      
    }
    .toggle-arrow.active{ transform:rotate(0deg) }

    .toggle-arrow{
      transition:all 0.4s; 
      transform:rotate(180deg);
      transition-delay:0.2s;
    }
    
    .chatbot-toggle:hover{
      background:rgba(0,0,0,0.3);
    }

  </style>

  @yield('css-content')
  @yield('header-js-content')

</head> 



<body>
  <div class="container max-1920 px-0">

    <!-- HEADER -->
    @include('site.includes/header')
    <!-- /HEADER -->

    <!-- contents -->
    @yield('content')
    <!-- /contents -->

    <!-- FOOTER -->
    @include('site.includes/footer')
    <!-- /FOOTER -->

    <!-- FEEDBACK -->
    @include('site.includes/feedback')
    <!-- /FEEDBACK -->
  </div>
  <input type="hidden" id="base_url" value="{{ url('/') }}">
  
   <script src="{{ asset('site/js/jquery.min.js')}}"></script>
   <script src="{{ asset('site/js/bootstrap.bundle.min.js')}}"></script>
   <script src="{{ asset('site/js/slick.min.js')}}"></script>
   <script src="{{ asset('site/js/owl.carousel.min.js')}}"></script>
   <script src="{{ asset('site/js/datatables.min.js')}}"></script>
   <script src="{{ asset('site/js/magnific-popup.min.js')}}"></script>
   
{{--   <script src="{{ asset('site/js/aos.min.js')}}"></script>--}}
   <script src="{{ asset('site/js/custom.min.js')}}"></script>
   <script src="{{ asset('site/js/swiper.min.js')}}"></script>
   
   <script src="{{ asset('admin/js/visitors-counter/client.min.js')}}"></script>
   <script src="{{ asset('admin/js/visitors-counter/visitors.logs.js')}}"></script>
   <script src='https://www.google.com/recaptcha/api.js'></script>

   <script type="text/javascript">
    //  for the chatbot feedback
    $(document).ready(function(){
      const chatbot_body = document.querySelector('.chatbot-body');
      const chatbot_toggle = document.querySelector('.chatbot-header');
      const toggle_arrow = document.querySelector('.toggle-arrow');
      if(chatbot_body){
        chatbot_toggle.addEventListener('click',()=>{
          chatbot_body.classList.toggle('active');
          toggle_arrow.classList.toggle('active');
        })
      }
    });
   </script>

  @yield('js-content')

</body>

</html>
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
  {{-- <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('site/images/icon/apple-icon-57x57.png')}}">
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
  <link rel="icon" type="image/png" sizes="96x96" href="{{  asset('site/images/icon/favicon-96x96.png')}}"> --}}
  <link rel="icon" type="image/png" sizes="16x16" href="{{  asset('site/images/tia_logo.png')}}">

{{--  <link rel="stylesheet" href="{{asset('site/css/aos.min.css')}}">--}}
  <link rel="stylesheet" href="{{asset('site/css/master.min.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/swiper.min.css')}}">
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
  <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

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


/* Style the buttons that are used to open and close the accordion panel */
.accordion {
  cursor: pointer;
  border: none;
  outline: none;
  transition: 0.4s;
}

/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
.active, .accordion:hover {
  background-color: #ccc;
}

/* Style the accordion panel. Note: hidden by default */
.panel {
  padding: 0 18px;
  background-color: white;
  display: none;
  overflow: hidden;
}
.panel-short {
  display: block;
}

    /* Floating Action Buttons */
    .fab-container {
      position: fixed;
      bottom: 2rem;
      right: 1.2rem;
      z-index: 1050;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 0.65rem;
    }
    .fab-btn {
      position: relative;
      width: 48px;
      height: 48px;
      border-radius: 50%;
      border: none;
      color: #fff;
      font-size: 1.15rem;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      box-shadow: 0 4px 14px rgba(0,0,0,0.22);
      transition: transform 0.2s, box-shadow 0.2s, background 0.25s;
      outline: none;
      text-decoration: none;
    }
    .fab-btn:hover {
      transform: scale(1.12);
      box-shadow: 0 6px 20px rgba(0,0,0,0.30);
    }
    .fab-btn .fab-tooltip {
      position: absolute;
      right: 60px;
      white-space: nowrap;
      background: #222;
      color: #fff;
      font-size: 0.78rem;
      padding: 0.3em 0.75em;
      border-radius: 4px;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.2s, transform 0.2s;
      transform: translateX(8px);
      letter-spacing: 0.02em;
    }
    .fab-btn .fab-tooltip::after {
      content: '';
      position: absolute;
      top: 50%;
      right: -5px;
      transform: translateY(-50%);
      border-width: 5px 0 5px 5px;
      border-style: solid;
      border-color: transparent transparent transparent #222;
    }
    .fab-btn:hover .fab-tooltip {
      opacity: 1;
      transform: translateX(0);
    }
    /* Button colors */
    .fab-feedback  { background: #2156a7; }
    .fab-sw       { background: #149246; }
    .fab-en       { background: #e8a317; }
    .fab-layout   { background: #555; }
    .fab-feedback:hover { background: #1a438a; }
    .fab-sw:hover       { background: #0f7538; }
    .fab-en:hover       { background: #c98e12; }
    .fab-layout:hover   { background: #333; }
    /* hide lang btn for current language */
    .fab-btn.fab-hidden { display: none; }

    /* ── Off-canvas Layout Panel ── */
    .layout-overlay {
      position: fixed; inset: 0;
      background: rgba(0,0,0,0.45);
      z-index: 1060;
      opacity: 0;
      visibility: hidden;
      transition: opacity 0.3s, visibility 0.3s;
    }
    .layout-overlay.open { opacity: 1; visibility: visible; }

    .layout-offcanvas {
      position: fixed;
      top: 0; right: 0;
      width: 330px;
      max-width: 90vw;
      height: 100%;
      background: #fff;
      z-index: 1070;
      box-shadow: -4px 0 24px rgba(0,0,0,0.18);
      transform: translateX(100%);
      transition: transform 0.35s cubic-bezier(.4,0,.2,1);
      display: flex;
      flex-direction: column;
      overflow: hidden;
    }
    .layout-offcanvas.open { transform: translateX(0); }

    .layout-offcanvas-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 1rem 1.25rem;
      border-bottom: 1px solid #e9ecef;
      background: #f8f9fa;
    }
    .layout-offcanvas-header h5 { font-size: 1rem; font-weight: 600; color: #333; }
    .layout-close-btn {
      background: none; border: none; font-size: 1.15rem;
      color: #666; cursor: pointer; padding: 0.25rem;
      transition: color 0.2s;
    }
    .layout-close-btn:hover { color: #c0392b; }

    .layout-offcanvas-body {
      flex: 1; overflow-y: auto;
      padding: 1.25rem;
    }
    .layout-section { margin-bottom: 1.5rem; }
    .layout-section-title {
      font-size: 0.82rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      color: #555;
      margin-bottom: 0.7rem;
    }
    .layout-sub-label {
      font-size: 0.78rem;
      font-weight: 600;
      color: #777;
      margin-bottom: 0.5rem;
    }
    .layout-option-group {
      display: flex;
      flex-wrap: wrap;
      gap: 0.5rem;
    }
    .layout-option-btn {
      display: inline-flex;
      align-items: center;
      padding: 0.45rem 0.9rem;
      border: 1px solid #ddd;
      border-radius: 6px;
      background: #fff;
      color: #444;
      font-size: 0.82rem;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.2s;
      text-decoration: none;
    }
    .layout-option-btn:hover { border-color: #2156a7; color: #2156a7; text-decoration: none; }
    .layout-option-btn.active-option {
      background: #2156a7;
      color: #fff;
      border-color: #2156a7;
    }

    .layout-color-row {
      display: flex;
      gap: 0.6rem;
      flex-wrap: wrap;
    }
    .layout-color-swatch {
      width: 32px; height: 32px;
      border-radius: 50%;
      border: 3px solid transparent;
      cursor: pointer;
      transition: border-color 0.2s, transform 0.2s;
      outline: none;
    }
    .layout-color-swatch:hover { transform: scale(1.15); }
    .layout-color-swatch.active-swatch { border-color: #333; }

    /* ── Theme overrides ── */
    body.theme-dark {
      background: #1a1a2e !important;
      color: #e0e0e0 !important;
    }
    body.theme-dark .container { background: #1a1a2e; }
    body.theme-dark .layout-offcanvas { background: #22223a; }
    body.theme-dark .layout-offcanvas-header { background: #2a2a45; border-color: #3a3a55; }
    body.theme-dark .layout-offcanvas-header h5 { color: #e0e0e0; }
    body.theme-dark .layout-close-btn { color: #aaa; }
    body.theme-dark .layout-section-title { color: #bbb; }
    body.theme-dark .layout-sub-label { color: #999; }
    body.theme-dark .layout-option-btn { background: #2a2a45; color: #ccc; border-color: #3a3a55; }
    body.theme-dark .layout-option-btn:hover { border-color: #5b8dd9; color: #5b8dd9; }
    body.theme-dark .layout-option-btn.active-option { background: #2156a7; color: #fff; border-color: #2156a7; }
    body.theme-dark .layout-offcanvas-body { scrollbar-color: #444 #22223a; }

    /* Font-size overrides — zoom scales everything uniformly */
    html.fs-small  body { zoom: 0.85; }
    html.fs-medium body { zoom: 1; }
    html.fs-large  body { zoom: 1.15; }
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

    {{-- FEEDBACK --}}
    {{-- @include('site.includes/feedback') --}}
    {{-- /FEEDBACK --}}
  </div>
  <!-- LAYOUT PANEL -->
  @include('site.includes/layout_panel')
  <!-- /LAYOUT PANEL -->

  <!-- FEEDBACK PANEL -->
  @include('site.includes/feedback_panel')
  <!-- /FEEDBACK PANEL -->

  <!-- Floating Action Buttons -->
  <div class="fab-container">
    <button class="fab-btn fab-feedback" id="fabFeedback" aria-label="Feedback">
      <span class="fab-tooltip">{{ label('lbl_feedbacks') }}</span>
      <i class="fa fa-comment"></i>
    </button>
    <a href="{{ url('language/sw') }}" class="fab-btn fab-sw @if(curlang() == '_sw') fab-hidden @endif" aria-label="Kiswahili">
      <span class="fab-tooltip">Kiswahili</span>
      <i class="fa fa-globe"></i>
    </a>
    <a href="{{ url('language/en') }}" class="fab-btn fab-en @if(curlang() == '_en') fab-hidden @endif" aria-label="English">
      <span class="fab-tooltip">English</span>
      <i class="fa fa-language"></i>
    </a>
    <button class="fab-btn fab-layout" id="fabLayout" aria-label="Layout">
      <span class="fab-tooltip">Layout</span>
      <i class="fa fa-th-large"></i>
    </button>
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



    var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    /* Toggle between adding and removing the "active" class,
    to highlight the button that controls the panel */
    this.classList.toggle("active");

    /* Toggle between hiding and showing the active panel */
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
      
    } else {
      panel.style.display = "block";
     
    }
  });
}
   </script>

  <script>
    // Feedback FAB opens the feedback off-canvas panel
    (function(){
      var fp = document.getElementById('feedbackOffcanvas');
      var fo = document.getElementById('feedbackOverlay');
      var fabFeedback = document.getElementById('fabFeedback');
      var fc = document.getElementById('feedbackClose');
      if(!fp || !fabFeedback) return;
      function openFeedback()  { fp.classList.add('open'); fo.classList.add('open'); }
      function closeFeedback() { fp.classList.remove('open'); fo.classList.remove('open'); }
      fabFeedback.addEventListener('click', openFeedback);
      fc.addEventListener('click', closeFeedback);
      fo.addEventListener('click', closeFeedback);
    })();
  </script>

  <script>
  (function(){
    var panel    = document.getElementById('layoutOffcanvas');
    var overlay  = document.getElementById('layoutOverlay');
    var btnOpen  = document.getElementById('fabLayout');
    var btnClose = document.getElementById('layoutClose');
    if(!panel) return;

    function openPanel()  { panel.classList.add('open'); overlay.classList.add('open'); }
    function closePanel() { panel.classList.remove('open'); overlay.classList.remove('open'); }

    btnOpen.addEventListener('click', openPanel);
    btnClose.addEventListener('click', closePanel);
    overlay.addEventListener('click', closePanel);

    /* ── Theme (light / dark) ── */
    var themeBtns = panel.querySelectorAll('[data-theme]');
    var savedTheme = localStorage.getItem('site_theme') || 'light';
    applyTheme(savedTheme);

    themeBtns.forEach(function(btn){
      btn.addEventListener('click', function(){
        applyTheme(btn.getAttribute('data-theme'));
      });
    });

    function applyTheme(t){
      document.body.classList.remove('theme-dark');
      if(t === 'dark') document.body.classList.add('theme-dark');
      localStorage.setItem('site_theme', t);
      themeBtns.forEach(function(b){
        b.classList.toggle('active-option', b.getAttribute('data-theme') === t);
      });
    }

    /* ── Primary colour ── */
    var swatches = panel.querySelectorAll('.layout-color-swatch');
    var savedColor = localStorage.getItem('site_primary') || '#2156a7';
    applyPrimary(savedColor);

    swatches.forEach(function(sw){
      sw.addEventListener('click', function(){
        applyPrimary(sw.getAttribute('data-primary'));
      });
    });

    function applyPrimary(c){
      document.documentElement.style.setProperty('--site-primary', c);
      localStorage.setItem('site_primary', c);
      swatches.forEach(function(s){
        s.classList.toggle('active-swatch', s.getAttribute('data-primary') === c);
      });
      // update active-option accent
      var styleTag = document.getElementById('dynamicPrimary');
      if(!styleTag){
        styleTag = document.createElement('style');
        styleTag.id = 'dynamicPrimary';
        document.head.appendChild(styleTag);
      }
      styleTag.textContent =
        '.layout-option-btn.active-option{background:'+c+'!important;border-color:'+c+'!important}'
        +'.layout-option-btn:hover{border-color:'+c+'!important;color:'+c+'!important}'
        +'.fab-feedback{background:'+c+'!important}';
    }

    /* ── Font size ── */
    var fsBtns = panel.querySelectorAll('[data-fontsize]');
    var savedFs = localStorage.getItem('site_fontsize') || 'medium';
    applyFontSize(savedFs);

    fsBtns.forEach(function(btn){
      btn.addEventListener('click', function(){
        applyFontSize(btn.getAttribute('data-fontsize'));
      });
    });

    function applyFontSize(s){
      document.documentElement.classList.remove('fs-small','fs-medium','fs-large');
      document.documentElement.classList.add('fs-' + s);
      localStorage.setItem('site_fontsize', s);
      fsBtns.forEach(function(b){
        b.classList.toggle('active-option', b.getAttribute('data-fontsize') === s);
      });
    }
  })();
  </script>

  @yield('js-content')

</body>

</html>
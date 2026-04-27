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

    /* ══════════════════════════════════════
       DARK MODE — FULL SITE OVERRIDES
       ══════════════════════════════════════ */

    /* CSS variable override */
    body.theme-dark {
      --accent-color: #7baaed;
      --accent-color-faded: rgba(123,170,237,0.3);
      background: #1a1a2e !important;
      color: #d0d0d0 !important;
    }

    /* Root containers */
    body.theme-dark .container,
    body.theme-dark .container-fluid,
    body.theme-dark .max-1920 {
      background-color: #1a1a2e !important;
    }

    /* ── HEADER ── */

    /* 1. Top green bar (.top-navbar → .top-innerrrr) */
    body.theme-dark .top-navbar {
      background-color: #12122a !important;
    }
    body.theme-dark .top-innerrrr {
      background-color: #0b6b2f !important;
    }
    body.theme-dark .top-navbar a,
    body.theme-dark .top-navbar li {
      color: #e0e0e0 !important;
    }

    /* 2. Middle header — logo row (.top-middle) */
    body.theme-dark .top-middle {
      background-color: #16163a !important;
    }
    body.theme-dark .text-accent {
      color: #c0c8e8 !important;
    }

    /* 3. Main nav (.top-bottom with bg #2156a7) */
    body.theme-dark .top-bottom {
      background-color: #182854 !important;
    }
    body.theme-dark .main-nav-container {
      border-color: #2a2a45 !important;
    }
    body.theme-dark .navbar {
      background-color: transparent !important;
    }
    body.theme-dark .navbar-toggler .fa {
      color: #ccc !important;
    }
    body.theme-dark .nav-bottom-header .nav-link,
    body.theme-dark .nav-bottom-header a {
      color: rgba(255,255,255,0.85) !important;
    }
    body.theme-dark .nav-bottom-header .nav-link:hover,
    body.theme-dark .nav-bottom-header a:hover {
      color: #fff !important;
    }
    body.theme-dark .dropdown-menu {
      background-color: #22223a !important;
      border-color: #3a3a55 !important;
    }
    body.theme-dark .dropdown-menu a {
      color: #c0c0d0 !important;
    }
    body.theme-dark .dropdown-menu a:hover {
      background-color: #2a2a45 !important;
      color: #fff !important;
    }

    /* 4. Full header element */
    body.theme-dark header {
      background-color: #16163a !important;
    }

    /* ── GENERAL TEXT ── */
    body.theme-dark h1, body.theme-dark h2, body.theme-dark h3,
    body.theme-dark h4, body.theme-dark h5, body.theme-dark h6 {
      color: #e8e8f0 !important;
    }
    body.theme-dark p, body.theme-dark span, body.theme-dark li,
    body.theme-dark label, body.theme-dark small, body.theme-dark div {
      color: #c0c0d0;
    }
    body.theme-dark a:not(.btn):not(.nav-link):not(.fab-btn) { color: #7baaed !important; }
    body.theme-dark a:not(.btn):not(.nav-link):not(.fab-btn):hover { color: #a0c4ff !important; }
    body.theme-dark .text-muted { color: #8888a0 !important; }
    body.theme-dark .text-dark { color: #d0d0d0 !important; }
    body.theme-dark .text-white { color: #fff !important; }
    body.theme-dark .text-white-50 { color: #8888a0 !important; }

    /* ── CARDS & WHITE BACKGROUNDS ── */
    body.theme-dark .bg-white,
    body.theme-dark .card,
    body.theme-dark .card-body,
    body.theme-dark .modal-content,
    body.theme-dark .panel,
    body.theme-dark .panel-short {
      background-color: #22223a !important;
      color: #d0d0d0 !important;
    }
    body.theme-dark .card { border-color: #3a3a55 !important; }

    /* ── SECTIONS & BACKGROUND COLORS ── */
    body.theme-dark .bg-light {
      background-color: #1e1e38 !important;
    }
    body.theme-dark .bg-secondary {
      background-color: #1e1e38 !important;
    }
    body.theme-dark section,
    body.theme-dark .ega-section:not(.bg-primary):not(.ega-footer) {
      background-color: #1a1a2e !important;
    }
    /* Inline bg #f8f9fa / #f... sections (CEO section, etc.) */
    body.theme-dark [style*="background-color: #f8f9fa"],
    body.theme-dark [style*="background-color: #f"] {
      background-color: #1e1e38 !important;
    }
    /* Testimonials section bg: #CBCBCB */
    body.theme-dark [style*="background: #CBCBCB"],
    body.theme-dark [style*="background: #cbcbcb"] {
      background: #1e1e38 !important;
    }
    /* Testimonial cards (inline bg: #fff) */
    body.theme-dark [style*="background: #fff"] {
      background: #22223a !important;
    }
    /* Inline border: 1px solid #eee */
    body.theme-dark [style*="border: 1px solid #eee"] {
      border-color: #3a3a55 !important;
    }
    /* Inline text colors */
    body.theme-dark [style*="color: #333"] { color: #d0d0d0 !important; }
    body.theme-dark [style*="color: #555"] { color: #b0b0c0 !important; }
    body.theme-dark [style*="color: #777"] { color: #9090a0 !important; }

    /* ── FORMS & INPUTS ── */
    body.theme-dark .form-control,
    body.theme-dark input[type="text"],
    body.theme-dark input[type="email"],
    body.theme-dark input[type="search"],
    body.theme-dark textarea,
    body.theme-dark select {
      background-color: #2a2a45 !important;
      color: #d0d0d0 !important;
      border-color: #3a3a55 !important;
    }
    body.theme-dark .form-control::placeholder { color: #777 !important; }
    body.theme-dark .form-control:focus {
      background-color: #2e2e4a !important;
      border-color: #5b8dd9 !important;
      color: #e0e0e0 !important;
    }

    /* ── TABLES ── */
    body.theme-dark table,
    body.theme-dark .table { color: #d0d0d0 !important; }
    body.theme-dark .table th,
    body.theme-dark .table td { border-color: #3a3a55 !important; }
    body.theme-dark .table-striped tbody tr:nth-of-type(odd) { background-color: #22223a !important; }
    body.theme-dark .table-hover tbody tr:hover { background-color: #2a2a45 !important; }

    /* ── BORDERS ── */
    body.theme-dark hr { border-color: #3a3a55 !important; }
    body.theme-dark .border-top-primary { border-color: #2a2a45 !important; }

    /* ── BUTTONS ── */
    body.theme-dark .btn-light {
      background-color: #2a2a45 !important;
      color: #d0d0d0 !important;
      border-color: #3a3a55 !important;
    }
    body.theme-dark .btn-outline-secondary {
      color: #bbb !important;
      border-color: #555 !important;
    }

    /* ── BREADCRUMBS & PAGINATION ── */
    body.theme-dark .breadcrumb { background-color: #22223a !important; }
    body.theme-dark .breadcrumb-item a { color: #7baaed !important; }
    body.theme-dark .page-link {
      background-color: #22223a !important;
      border-color: #3a3a55 !important;
      color: #7baaed !important;
    }

    /* ── FOOTER ── */

    /* Footer wave */
    body.theme-dark .footer-wave svg { background: #1a1a2e !important; }
    body.theme-dark .footer-wave .path-11 { fill: rgba(34,86,167,0.4) !important; }
    body.theme-dark .footer-wave .path-22 { fill: rgba(34,86,167,0.55) !important; }
    body.theme-dark .footer-wave .path-33 { fill: #182854 !important; }

    /* Footer body — darken the blue */
    body.theme-dark .ega-footer.bg-primary {
      background-color: #12224a !important;
    }
    body.theme-dark .ega-footer a { color: rgba(255,255,255,0.75) !important; }
    body.theme-dark .ega-footer a:hover { color: #fff !important; }
    body.theme-dark .footer-heading { color: #e0e0e0 !important; }
    body.theme-dark .footer-content p,
    body.theme-dark .footer-content span,
    body.theme-dark .footer-content li { color: rgba(255,255,255,0.7) !important; }

    /* Footer copyright / site-info */
    body.theme-dark .site-info {
      background-color: #0d1a3a !important;
      border-color: #1a2a50 !important;
    }
    body.theme-dark .footer-links,
    body.theme-dark .footer-nav {
      background-color: transparent !important;
    }
    body.theme-dark .footer-links a,
    body.theme-dark .footer-nav a { color: #a0b0d0 !important; }
    body.theme-dark .footer-links a:hover,
    body.theme-dark .footer-nav a:hover { color: #fff !important; }
    body.theme-dark .copyright,
    body.theme-dark .copyright div { color: #7080a0 !important; }
    body.theme-dark .copyright a { color: #7baaed !important; }

    /* ── SCROLLBAR ── */
    body.theme-dark ::-webkit-scrollbar { background: #1a1a2e; }
    body.theme-dark ::-webkit-scrollbar-thumb { background: #3a3a55; border-radius: 4px; }

    /* ── OFF-CANVAS PANELS ── */
    body.theme-dark .layout-offcanvas { background: #22223a; }
    body.theme-dark .layout-offcanvas-header { background: #2a2a45; border-color: #3a3a55; }
    body.theme-dark .layout-offcanvas-header h5 { color: #e0e0e0 !important; }
    body.theme-dark .layout-close-btn { color: #aaa; }
    body.theme-dark .layout-section-title { color: #bbb !important; }
    body.theme-dark .layout-sub-label { color: #999; }
    body.theme-dark .layout-option-btn { background: #2a2a45; color: #ccc; border-color: #3a3a55; }
    body.theme-dark .layout-option-btn:hover { border-color: #5b8dd9; color: #5b8dd9; }
    body.theme-dark .layout-option-btn.active-option { background: #2156a7; color: #fff; border-color: #2156a7; }
    body.theme-dark .layout-offcanvas-body { scrollbar-color: #444 #22223a; }

    /* ── INNER PAGES ── */

    /* Breadcrumb banner */
    body.theme-dark .breadcumb-banner,
    body.theme-dark .bg-light-darker,
    body.theme-dark .breadcrumb-bg {
      background-color: #1e1e38 !important;
    }
    body.theme-dark .breadcrumb {
      background-color: transparent !important;
    }
    body.theme-dark .breadcrumb-item a { color: #7baaed !important; }
    body.theme-dark .breadcrumb-item.active,
    body.theme-dark .breadcrumb-item + .breadcrumb-item::before { color: #8888a0 !important; }
    body.theme-dark .breadcumb-banner h5.bg-white {
      background-color: #22223a !important;
      color: #7baaed !important;
    }

    /* Inner page main containers */
    body.theme-dark .about-page,
    body.theme-dark .main-container {
      background-color: #1a1a2e !important;
    }
    body.theme-dark .page-content {
      background-color: #1a1a2e !important;
      color: #d0d0d0 !important;
    }
    body.theme-dark .content-heading { color: #7baaed !important; }

    /* Search results bg-light-darker headings */
    body.theme-dark .bg-light-darker-color,
    body.theme-dark .bg-light-darker {
      background-color: #2a2a45 !important;
      color: #d0d0d0 !important;
    }

    /* Landing / page section */
    body.theme-dark .landing-section::before {
      background-color: rgba(26,26,46,0.85) !important;
    }
    body.theme-dark .page-section .nav-item .nav-link {
      border-top-color: #3a3a55 !important;
    }
    body.theme-dark .page-section .nav-item .active {
      border-top-color: #5b8dd9 !important;
    }

    /* Announcement icon bubble (rgba green bg) */
    body.theme-dark [style*="background-color: rgba(20,146,70,0.1)"] {
      background-color: rgba(20,146,70,0.2) !important;
    }

    /* border-bottom list separators */
    body.theme-dark [style*="border-bottom: 1px solid #eee"] {
      border-bottom-color: #3a3a55 !important;
    }

    /* box-shadow adjustments */
    body.theme-dark [style*="box-shadow: 0 2px 10px"] {
      box-shadow: 0 2px 10px rgba(0,0,0,0.3) !important;
    }
    body.theme-dark [style*="box-shadow: 0 3px 15px"] {
      box-shadow: 0 3px 15px rgba(0,0,0,0.35) !important;
    }

    /* ── SEARCH PROGRAM & PARTNERS SECTION ── */
    body.theme-dark .search-partners-section {
      background: linear-gradient(135deg, #12224a 0%, #0b3d20 100%) !important;
    }
    body.theme-dark .search-partners-section .container {
      background-color: transparent !important;
    }
    body.theme-dark .search-partners-section h4,
    body.theme-dark .search-partners-section h6,
    body.theme-dark .search-partners-section p,
    body.theme-dark .search-partners-section span,
    body.theme-dark .search-partners-section div {
      color: rgba(255,255,255,0.85) !important;
    }
    body.theme-dark .search-partners-section .form-control {
      background-color: #1a1a2e !important;
      color: #d0d0d0 !important;
      border: none !important;
    }
    body.theme-dark .search-partners-section .form-control::placeholder {
      color: #8888a0 !important;
    }
    body.theme-dark .search-partners-section .btn {
      background-color: #0b6b2f !important;
      color: #fff !important;
    }
    body.theme-dark .search-partners-section img {
      background: rgba(255,255,255,0.9) !important;
      filter: brightness(1) !important;
    }

    /* ── STUDENT TESTIMONIALS SECTION ── */
    body.theme-dark .testimonials-section {
      background: #1a1a2e !important;
    }
    body.theme-dark .testimonials-section .container {
      background-color: transparent !important;
    }
    /* Section heading */
    body.theme-dark .testimonials-section h3 {
      color: #7baaed !important;
    }
    body.theme-dark .testimonials-section p.text-muted {
      color: #8888a0 !important;
    }
    /* Divider lines */
    body.theme-dark .testimonials-section [style*="background-color: #2156a7"] {
      background-color: #5b8dd9 !important;
    }
    /* Testimonial cards */
    body.theme-dark .testimonials-section [style*="background: #fff"] {
      background: #22223a !important;
      border-color: #3a3a55 !important;
      box-shadow: 0 3px 15px rgba(0,0,0,0.3) !important;
    }
    /* Card name */
    body.theme-dark .testimonials-section h6 {
      color: #7baaed !important;
    }
    /* Card program */
    body.theme-dark .testimonials-section small {
      color: #4dc97a !important;
    }
    /* Card quote text */
    body.theme-dark .testimonials-section p {
      color: #b0b0c0 !important;
    }
    /* Decorative quote mark */
    body.theme-dark .testimonials-section [style*="color: rgba(20,146,70,0.15)"] {
      color: rgba(20,146,70,0.25) !important;
    }
    /* Decorative background circles */
    body.theme-dark .testimonials-section [style*="background: rgba(20,146,70,0.05)"],
    body.theme-dark .testimonials-section [style*="background: rgba(20,146,70,0.04)"] {
      background: rgba(91,141,217,0.06) !important;
    }
    body.theme-dark .testimonials-section [style*="background: rgba(33,86,167,0.05)"] {
      background: rgba(91,141,217,0.06) !important;
    }
    /* Carousel nav buttons */
    body.theme-dark .testimonials-section [style*="background: #2156a7"] {
      background: #2a4a80 !important;
    }
    body.theme-dark .testimonials-section [style*="background: #149246"] {
      background: #0b6b2f !important;
    }
    /* Carousel indicators */
    body.theme-dark .testimonials-section .carousel-indicators li {
      background-color: #3a3a55 !important;
    }
    body.theme-dark .testimonials-section .carousel-indicators li.active {
      background-color: #4dc97a !important;
    }

    /* ── IMAGES ── */
    body.theme-dark img { filter: brightness(0.9); }
    body.theme-dark .ega-footer img { filter: brightness(1); }

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
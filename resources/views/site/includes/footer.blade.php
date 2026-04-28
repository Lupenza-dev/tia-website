<div class="footer-wave" style="margin-bottom:-10px; line-height:0; overflow:hidden; margin-top: 20px">
  <svg version="1.1" id="ega-svg2" class="row ega-svg2" width="2000" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 2000 131.2" xml:space="preserve"><style media="screen"> .ega-svg2{ width: 100%; position: relative; bottom: -0.5px; background: white; left: 13px; } .path-11 { fill: rgba(34, 86, 167, 0.6); } .path-22 { fill: rgba(34, 86, 167, 0.75); } .path-33 { fill: #2256A7; } </style><path class="path-11" d="M-0.5,83.4c59.6,40.5,193.3,35,316.7-12.3C525.6-9.2,756.7-9.6,979.8,12.3s445.6,57.9,669.8,54.1C1821.1,63.5,1932,56,2000,53c0,36,0,76.4,0,76.4H1L-0.5,83.4z"></path><path class="path-22" d="M309.2,46.1c265.1-57.8,453.7-19.6,687.9,6.8c285.1,32.2,564.2,63,863.4,33.4c94-9.3,119.5-19.6,139.5-19c0,32.2,0,63,0,63H0v-66C0,64.3,152.7,80.2,309.2,46.1z"></path><path class="path-22" d="M344.5,54.9c82.3-26.3,167.2-46,253-36.5S767,51.6,851.9,67.8c272.3,52,522.5,16.7,819.3,5c90-3.5,293.8-13.6,328.8-12.6c0,24,0,71,0,71H-1v-59C-1,72.3,198.7,101.6,344.5,54.9z"></path><path class="path-33" d="M1731.8,97.1c-289.3,18.5-590.4,17.2-873.9-16.8C746,66.9,641.1,42.1,528.5,39.5s-249.3,31-353.7,69.9c-57.5,21.4-164.7,2.3-175.7-4.7c0,8,0,26.5,0,26.5h2003v-58C2002,73.3,1854.2,89.2,1731.8,97.1z"></path></svg>
</div>

<footer class="ega-footer ega-section bg-primary col-12 pb-0" style="margin-top:0; border-top: 1px solid hsla(0, 0%, 100%, .5); ">

  <div class="main-container container-fluid px-lg-5">

    <div class="row">

      <div class="col-lg-7  px-3 px-lg-5 no-padding-sm footer-content">
  
        <div class="row">
          <div class="col-md-7 text-center text-lg-left">
            <h5 class="footer-heading">{{ label('lbl_contact') }}</h5>
            <div class="lines mt-1 mb-4 d-flex justify-content-lg-between justify-content-center">
              <div class="col-3 bold-line" style="background:hsla(0, 0%, 100%, .9);"> </div>
              <div class="col-8 d-none bg-white thin-line"> </div>
            </div>

            @if (!empty($headquarter))
              <p class="my-2">{{ label('lbl_site_subtitle') }}</p>
              <p class="my-0">{{ label('lbl_site_title') }}</p>
              @if ($headquarter->physical_address)
                <p class="my-0">
                  {!! nl2br($headquarter->physical_address) !!}
                </p>
              @endif
              @if ($headquarter->email)
                <p class="my-2">
                  <a href="mailto:{{ $headquarter->email }}"><i class="fa fa-envelope mr-1"></i> {{ $headquarter->email }}</a>
                </p>
              @endif
              @if ($headquarter->toll_free)
                <p class="my-1">
                  {{label('lbl_toll_free')}}: <a href="tel:{{ $headquarter->toll_free }}">{{ $headquarter->toll_free }}</a>
                </p>
              @endif
              @if ($headquarter->phone)
                <p class="my-1">
                  {{label('lbl_phone')}}: <a href="tel:{{ $headquarter->phone }}">{{ $headquarter->phone }}</a>
                </p>
              @endif
              @if ($headquarter->fax)
                <p class="my-1">
                  {{label('lbl_fax')}}: <a href="fax:{{ $headquarter->fax }}">{{ $headquarter->fax }}</a>
                </p>
              @endif
            @endif
               @forelse($social_links as $social_link)
              @if($social_link->title_en == 'facebook')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-facebook-f px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'twitter')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-twitter  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'youtube')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-youtube  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'linkedIn')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-linkedin-in  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'blog')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-blogger-b  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'whatsapp')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-whatsapp  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'vimeo')
                <a hrf="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-vimeo  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'skype')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-skype  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'tumblr')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-tumblr  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'snapchat')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-snapchat  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'flickr')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-flickr  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'instagram')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-instagram  px-2" aria-hidden="true"></i></a>
              @endif
              @if($social_link->title_en == 'tiktok')
                <a href="{{ $social_link->url }}" target="_blank" rel="noopener noreferrer"><i class="fab icon fa-tiktok  px-2" aria-hidden="true"></i></a>
              @endif
            @endforeach
          </div>    
         
          <div class="col-md-5 no-padding-sm text-center mt-4 mt-md-0 text-lg-left mb-4">
            <h5 class="footer-heading"> {{ label('lbl_related_links') }} </h5> 
            <div class="lines mt-1 mb-4 d-flex justify-content-lg-between justify-content-center">
              <div class="col-3 bold-line " style="background:hsla(0, 0%, 100%, .9);"> </div>
              <div class="col-8 d-none bg-white thin-line"> </div>
            </div>             
            @foreach ($relatedLinks as $key => $link) 
              @break($key > 6)
              <div class="pr-1 py-2"><a target="_blank" rel="noopener noreferrer" href="{{ $link->url }}"> {{$link->title}} </a></div>      
            @endforeach               
          </div>  
        </div>      
  
      </div>
  


      <div class="col-lg-5 px-0 px-xs-2 m-0">     
        <div class="row footer-content  row px-xs-2 px-3 pb-0 mb-0">  
          <div class="col-md-6 no-padding-sm text-center text-lg-left">
            <h5 class="footer-heading"> {{ label('lbl_our_campuses')}} </h5>    
            <div class="lines mb-4 d-flex justify-content-lg-between justify-content-center">
              <div class="col-3 bold-line " style="background:hsla(0, 0%, 100%, .9);"> </div>
              <div class="col-8 d-none bg-white thin-line"> </div>
            </div>
            <div id="tia-campus-map" style="height:220px; border-radius:10px; overflow:hidden; border:2px solid rgba(255,255,255,0.2);"></div>
            <script>
              document.addEventListener('DOMContentLoaded', function(){
                var map = L.map('tia-campus-map', {
                  center: [-6.5, 35.5],
                  zoom: 5.4,
                  zoomControl: false,
                  attributionControl: false,
                  scrollWheelZoom: false,
                  dragging: true
                });
                L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                  maxZoom: 18
                }).addTo(map);

                var campuses = [
                  { name: 'TIA Dar es Salaam (HQ)', lat: -6.7924, lng: 39.2083 },
                  { name: 'TIA Dodoma', lat: -6.1630, lng: 35.7516 },
                  { name: 'TIA Mbeya', lat: -8.9000, lng: 33.4500 },
                  { name: 'TIA Mtwara', lat: -10.2736, lng: 40.1828 },
                  { name: 'TIA Singida', lat: -4.8154, lng: 34.7437 },
                  { name: 'TIA Mwanza', lat: -2.5164, lng: 32.9175 },
                  { name: 'TIA Kigoma', lat: -4.8769, lng: 29.6266 }
                ];

                var icon = L.divIcon({
                  html: '<div style="background:#fff;border:3px solid #2156a7;width:14px;height:14px;border-radius:50%;box-shadow:0 0 6px rgba(0,0,0,0.35);"></div>',
                  className: '',
                  iconSize: [14, 14],
                  iconAnchor: [7, 7]
                });

                campuses.forEach(function(c){
                  L.marker([c.lat, c.lng], {icon: icon})
                    .addTo(map)
                    .bindPopup('<strong style="color:#2156a7;">' + c.name + '</strong><br><a href="https://www.google.com/maps/dir/?api=1&destination=' + c.lat + ',' + c.lng + '" target="_blank" rel="noopener noreferrer" style="font-size:0.8rem;color:#2156a7;"><i class="fa fa-directions"></i> Get Directions</a>');
                });

                L.control.zoom({ position: 'bottomright' }).addTo(map);
              });
            </script>
          </div>
  
          <div class="col-md-6 no-padding-sm text-center mt-4 mt-md-0 text-lg-left">
            <h5 class="footer-heading"> {{ label('lbl_our_visitor') }} </h5> 
            {{-- <h5 class="footer-heading"> {{ label('lbl_social') }} </h5>  --}}
            <div class="lines mt-1 mb-4 d-flex justify-content-lg-between justify-content-center">
              <div class="col-3 bold-line " style="background:hsla(0, 0%, 100%, .9);"> </div>
              <div class="col-8 d-none bg-white thin-line"> </div>
            </div>  
            @php $vc = Visitors(); @endphp
            <div class="visitors-counter">
              <div class="vc-item">
                <i class="fa fa-calendar-day vc-icon"></i>
                <div class="vc-info">
                  <span class="vc-count" id="vc-today">{{ $vc['today'] }}</span>
                  <span class="vc-label">{{ label('lbl_today') }}</span>
                </div>
              </div>
              <div class="vc-item">
                <i class="fa fa-history vc-icon"></i>
                <div class="vc-info">
                  <span class="vc-count" id="vc-yesterday">{{ $vc['yesterday'] }}</span>
                  <span class="vc-label">{{ label('lbl_yesterday') }}</span>
                </div>
              </div>
              <div class="vc-item">
                <i class="fa fa-calendar-week vc-icon"></i>
                <div class="vc-info">
                  <span class="vc-count" id="vc-week">{{ $vc['week'] }}</span>
                  <span class="vc-label">{{ label('lbl_this_week') }}</span>
                </div>
              </div>
              <div class="vc-item">
                <i class="fa fa-calendar-alt vc-icon"></i>
                <div class="vc-info">
                  <span class="vc-count" id="vc-month">{{ $vc['month'] }}</span>
                  <span class="vc-label">{{ label('lbl_this_month') }}</span>
                </div>
              </div>
              <div class="vc-item">
                <i class="fa fa-calendar vc-icon"></i>
                <div class="vc-info">
                  <span class="vc-count" id="vc-year">{{ $vc['year'] }}</span>
                  <span class="vc-label">{{ label('lbl_this_year') }}</span>
                </div>
              </div>
            </div>
            <style>
              .visitors-counter {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 0.5rem;
              }
              .visitors-counter .vc-item {
                display: flex;
                align-items: center;
                gap: 0.6rem;
                background: rgba(255,255,255,0.08);
                border: 1px solid rgba(255,255,255,0.15);
                border-radius: 8px;
                padding: 0.55rem 0.7rem;
                transition: background 0.2s;
              }
              .visitors-counter .vc-item:hover {
                background: rgba(255,255,255,0.15);
              }
              .visitors-counter .vc-icon {
                font-size: 1.2rem;
                color: rgba(255,255,255,0.7);
                width: 28px;
                text-align: center;
              }
              .visitors-counter .vc-info {
                display: flex;
                flex-direction: column;
                line-height: 1.2;
              }
              .visitors-counter .vc-count {
                font-size: 1.1rem;
                font-weight: 700;
                color: #fff;
              }
              .visitors-counter .vc-label {
                font-size: 0.7rem;
                color: rgba(255,255,255,0.6);
                text-transform: uppercase;
                letter-spacing: 0.04em;
              }
              .visitors-counter .vc-item:last-child:nth-child(odd) {
                grid-column: 1 / -1;
              }
            </style>
            
          </div>
        </div>  
      </div>  
    </div>
  
 
  
  </div>


  <div class="site-info" style="border-top:1px solid hsla(0, 0%, 100%, .5)">

    <div class="col-md-12 pl-0 list no-padding-sm text-center footer-links footer-nav p-3">
      <ul class="list-inline mb-0">
        {!! App\Models\MenuItem::getMenu('footer_menu') !!}
      </ul>
    </div>

    <div class="copyright text-white-50 ">
      <div class="text-center my-1">
        {{ label('lbl_designed')}}
        <a href="https://www.tia.ac.tz" class="" rel="noopener noreferrer" target="_blank">{{ label('lbl_ega')}}</a>
        {{ label('lbl_content_maintained')}}
      </div>

      <div class="text-white-50 text-center">
        © {{ date('Y') }} {{ label('lbl_site_title_short')}}, {{ label('lbl_copyright')}}
      </div>
    </div>
  </div>

</footer>
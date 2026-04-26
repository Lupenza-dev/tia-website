//add active Class
var current_url = window.location.href.split('/');
var current_url = current_url[current_url.length -1];
$('.nav-bottom-header li.nav-item').removeClass('active');
$('.nav-bottom-header').find('a[href="' + current_url + '"]').parents('li.nav-item').addClass('active');

//  add fixed header when scroll
$('body').scroll(function(e){
  var scrollTop = $('body').scrollTop();
  if(scrollTop > 180){
      $('.top-fixed').addClass('fixed-top');
      // $('.top-fixed').addClass('bg-white-slightly-faded');
      // $('.top-fixed').removeClass('bg-darker-faded');
  } else {
      $('.top-fixed').removeClass('fixed-top');
      // $('.top-fixed').addClass('bg-darker-faded');
      // $('.top-fixed').removeClass('bg-white-slightly-faded');
  }

  scrollBanner()
});

// $('.carousel-control-prev').click(function(e) {
//    console.log(e);
//    $('.carouselExampleFade').carousel('next');
// });
//
// $('.carousel-control-next').click(function() {
//   $('#myCarousel').carousel('next');
// });

///parallax effect on bg
const main_banners = document.querySelectorAll(".parallax-banner");
var banners_offsets = [];
var banners_rates = [];

if(main_banners.length){ 
  main_banners.forEach((banner,index) => {
    banners_offsets.push(0);
    banners_rates.push(0.5);
    bannerPosition = banner.getBoundingClientRect().top+scrollTop
    if(banner.dataset.offset) banners_offsets[index] = parseInt(banner.dataset.offset);
    if(banner.dataset.rate) banners_rates[index] = parseFloat(banner.dataset.rate);
    if ($( window ).width() > 991.98) banner.style.backgroundPosition="0px " + (-1*(banners_offsets[index]))+"px";
    else  banner.style.backgroundPosition="0px 0px";
  });

}


$(window).resize(function(e){
  scrollBanner();
  makeSquareUsingHeight();
  hasReset = false;
});

var hasReset = false;
var scrollTop = 0;
function scrollBanner(){
 if(hasReset && $( window ).width() < 991.98) return

  scrollTop = $('body').scrollTop();
  
  if(main_banners.length  ){
    main_banners.forEach((banner,index) => {
      bannerPosition = banner.getBoundingClientRect().top+scrollTop
      if ($( window ).width() > 991.98)  banner.style.backgroundPosition="0px " + (scrollTop*banners_rates[index]-(banners_offsets[index]))+"px";
      else  {
        banner.style.backgroundPosition="0px 0px";    
        hasReset = true;
      }    
    });
  }
}


function makeSquareUsingHeight(){
  if(squared_items_by_height.length === 0) return;

  squared_items_by_height.forEach(square => {
    square.style.width = getComputedStyle(square,null).height
  })
}


var squared_items_by_height = [];
$(document).ready(function(){
  /// close home pup-up
  const popup_close = document.querySelector(".popup-close");
  if(popup_close){
    popup_close.addEventListener('click',function (){
      document.querySelector(this.dataset.close).classList.add("closed");
    })
  }

  //change scroll to contents
  const scroll_to_content = document.querySelector('.scroll-to-content');

  if(scroll_to_content){
    scroll_to_content.addEventListener('click',function (){
      document.querySelector("#homeContentTether").scrollIntoView( {behavior: "smooth" })
    })
  }

  const scroll_to_top = document.querySelector('.scroll-to-top');

  if(scroll_to_top){
    scroll_to_top.addEventListener('click',function (){
      document.querySelector("header").scrollIntoView( {behavior: "smooth" })
    })
  }

 // toggling search display
 const search_form_container = document.querySelector('.search-form-container');
 const search_toggles = document.querySelectorAll('.search-toggle');
 

 if(search_form_container && search_toggles.length){
   search_toggles.forEach(toggler => {
     toggler.addEventListener('click',()=>{
       search_form_container.classList.toggle('active');
       let menu_btn = document.querySelector('.menu-button');
       if(menu_btn) {
         if(search_form_container.classList.contains('active')) {
           menu_btn.classList.replace('d-flex','d-none');
           if(menu_btn.classList.contains('menu-opened')) menu_btn.click();
         }
         else menu_btn.classList.replace('d-none','d-flex')
       }   
     })
   })
 }

  //squares
  squared_items_by_height = document.querySelectorAll('.squared-item-by-height');
  makeSquareUsingHeight();

  //owl carousel
  $(document).ready(function(){
    if(document.querySelector(".owl-carousel")) $(".owl-carousel").owlCarousel({
        nav:true,
        navContainer: '.custom-owl-nav',
        navText: [document.querySelector('.owl-prev-template'),document.querySelector('.owl-next-template')],
        rtl: false,
        loop:true,
      
        autoplay:true,
        autoplayTimeout:3000,
        autoplayHoverPause:true,
       
        dots: true,
        dotsEach:true,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                // nav:true
            },
            600:{
                items:2,
            },
            1000:{
                items:3,
                // nav:true,
            }
        }
    });
});

/// swiper
var swiper;
$(document).ready(function(){
  if(document.querySelector(".mySwiper")) {
    swiper = new Swiper(".mySwiper", {
      effect: "cards",
      grabCursor: true,
      speed: 700,
      spaceBetween: 50,
    });

    var swiperNext = document.querySelector(".swiper-next");
    if(swiperNext) swiperNext.addEventListener('click',()=>{swiper.slideNext();})

    var swiperPrev = document.querySelector(".swiper-prev");
    if(swiperPrev) swiperPrev.addEventListener('click',()=>{swiper.slidePrev();})

    var swiperIndicators = document.querySelectorAll(".swiper-indicator");
    if(swiperIndicators.length) swiperIndicators.forEach((indicator,index)=>{
      indicator.addEventListener('click',()=>{ swiper.slideTo(index, 700, false)})        
    });

    swiper.on('slideChange', function () {
      console.log( "indexxxxx: ", swiper.activeIndex)
      if(swiperIndicators.length >= swiper.activeIndex+1) {
        var lastActive = document.querySelector(".swiper-indicator.active");
        if(lastActive) lastActive.classList.remove("active");
        swiperIndicators[swiper.activeIndex].classList.add('active');
      }
     // swiper.slides
    });
  }
});



  //for select2 - activate...
  $('.select2').select2();


  //datables...
    $('.dataTable').dataTable(
        {
            autoWidth: false,
            columnDefs: [
                {
                    targets: ['_all'],
                    className: 'mdc-data-table__cell'
                }
            ],
            "bPaginate": true,
            "bLengthChange": false,
            "bFilter": true,
            "bInfo": true,
            "bAutoWidth": true,
            "oLanguage": {
                "sSearch": " ",
                "oPaginate": {
                    "sPrevious": "<svg viewBox=\"0 0 24 24\" focusable=\"false\" class=\"mat-paginator-icon\"><path d=\"M18.41 16.59L13.82 12l4.59-4.59L17 6l-6 6 6 6zM6 6h2v12H6z\"></path></svg>",
                    "sNext": "<svg viewBox=\"0 0 24 24\" focusable=\"false\" class=\"mat-paginator-icon\"><path d=\"M5.59 7.41L10.18 12l-4.59 4.59L7 18l6-6-6-6zM16 6h2v12h-2z\"></path></svg>"
                }
            }
        }
    );
    $('input[type="search"]').attr('placeholder','Search ...');

    //DropDown
    $("li.dropdown").hover(
        function() {
            $('.dropdown-menu', this).first().stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');
        },
        function() {
            $('.dropdown-menu', this).first().stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');
        }
    );


    /* Video - Magnific Popup */
    $('.popup-youtube, .popup-vimeo').magnificPopup({
        disableOn: 700,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,
        fixedContentPos: false,
        iframe: {
            patterns: {
                youtube: {
                    index: 'youtube.com/',
                    id: function(url) {
                        var m = url.match(/[\\?\\&]v=([^\\?\\&]+)/);
                        if ( !m || !m[1] ) return null;
                        return m[1];
                    },
                    src: 'https://www.youtube.com/embed/%id%?autoplay=1'
                },
                vimeo: {
                    index: 'vimeo.com/',
                    id: function(url) {
                        var m = url.match(/(https?:\/\/)?(www.)?(player.)?vimeo.com\/([a-z]*\/)*([0-9]{6,11})[?]?.*/);
                        if ( !m || !m[5] ) return null;
                        return m[5];
                    },
                    src: 'https://player.vimeo.com/video/%id%?autoplay=1'
                }
            }
        }
    });

    //set text color from image colours
    colorThief();

});

$('.carousel').carousel({
    interval: 5000
})

// slick slides
$('.slick-slide1').slick({
   slidesToShow: 6,
   slidesToScroll: 1,
    infinite: true,
    dots: true,
    arrows:false,
    autoplay: true,
   responsive: [
    {
      breakpoint: 1025,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 1,
        infinite: true,
        dots: false
      }
    },
    {
      breakpoint: 769,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 1,
        infinite: true,
        dots: false
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1
      }
    }
  ]
 });

// slick slides
$('.slick-slide2').slick({
   slidesToShow: 2,
   slidesToScroll: 1,
   dots: true,
   arrows:false,
   autoplay: true,
   responsive: [
    {
      breakpoint: 1025,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 1,
        infinite: true,
        dots: false
      }
    },
    {
      breakpoint: 769,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        infinite: true,
        dots: false
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]


  
 });


 var sheet = "";

 function colorThief(){
   
    //change succestories title color with logo
    const thiefed_image = document.querySelectorAll('.thiefed-image');
    const target_backdrop = document.querySelectorAll('.target-backdrop');
    const target_text = document.querySelectorAll('.target-text');

    if(thiefed_image ){
       sheet = document.createElement('style');

      thiefed_image.forEach((image,index) => {
        //var {r,g,b}= getAverageRGB(image);

         // Make sure image is finished loading

         
        var colorThief = new ColorThief();
        var [r,g,b]=colorThief.getColor(image);

        
        if (image.complete) {
          var [r,g,b]=colorThief.getColor(image);
          if(target_backdrop.length){ 
            target_backdrop[index].classList.add('target-backdrop-'+index);    
            sheet.innerHTML += ".has-hover-color-thief:hover .target-backdrop-"+ index +"{background-color:rgb("+ r + "," + g + "," + b +");}";
          }
          if(target_text.length){ 
            target_text[index].classList.add('target-text-'+index);    
            sheet.innerHTML += ".has-hover-color-thief:hover .target-text-"+ index +"{color:rgb("+ r + "," + g + "," + b +");}";
          }
        } else {
          image.addEventListener('load', function() {
            var [r,g,b]=colorThief.getColor(image);
            colorThief.getColor(image);
            if(target_backdrop.length){ 
              target_backdrop[index].classList.add('target-backdrop-'+index);    
              sheet.innerHTML += ".has-hover-color-thief:hover .target-backdrop-"+ index +"{background-color:rgb("+ r + "," + g + "," + b +");}";
            }
            if(target_text.length){ 
              target_text[index].classList.add('target-text-'+index);    
              sheet.innerHTML += ".has-hover-color-thief:hover .target-text-"+ index +"{color:rgb("+ r + "," + g + "," + b +");}";
            }
          });
        }

       
      });

      document.body.appendChild(sheet);
    }

 }





 function getAverageRGB(imgEl) {

  var blockSize = 5, // only visit every 5 pixels
      defaultRGB = {r:0,g:0,b:0}, // for non-supporting envs
      canvas = document.createElement('canvas'),
      context = canvas.getContext && canvas.getContext('2d'),
      data, width, height,
      i = -4,
      length,
      rgb = {r:0,g:0,b:0},
      count = 0;

  if (!context) {
      return defaultRGB;
  }

  height = canvas.height = imgEl.naturalHeight || imgEl.offsetHeight || imgEl.height;
  width = canvas.width = imgEl.naturalWidth || imgEl.offsetWidth || imgEl.width;

  context.drawImage(imgEl, 0, 0);

  try {
      data = context.getImageData(0, 0, width, height);
  } catch(e) {
      /* security error, img on diff domain */
      return defaultRGB;
  }

  length = data.data.length;

  while ( (i += blockSize * 4) < length ) {
      ++count;
      rgb.r += data.data[i];
      rgb.g += data.data[i+1];
      rgb.b += data.data[i+2];
  }

  // ~~ used to floor values
  rgb.r = ~~(rgb.r/count);
  rgb.g = ~~(rgb.g/count);
  rgb.b = ~~(rgb.b/count);

  return rgb;

}

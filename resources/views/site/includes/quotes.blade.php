<div class="bg-white">
    <div class="container pb-4">
      <div class="row  py-4 mx-0 " style="min-height:500px">
        <div class="col-lg-12 mb-4 px-lg-5 px-4 section-heading has-show-on-hover position-relative" >
          
          <div class="d-block ">
            <h5 class="pl-0 mb-lg-3 text-uppercase text-center section-heading bg-white-transparent-hover-secondary pr-lg-5 > 
              <a href="#" class="py-1  d-inline-block lines position-relative">
                <div class="pr-sm-2 py-1 text-primary text-center  d-inline-block position-relative"> 
                {{ label('lbl_quotation') }}
                </div>
              </a>                
            </h5>  
          </div>  
          <div class="swiper mySwiper pt-5 pr-lg-4 pb-0">
            <div class="swiper-wrapper  pt-3">
             @foreach($quotations as $item) 
              <div class="swiper-slide overflow-visible">
                <div class="img img-1 background-image" style="background-image:url({{'uploads/quotations/' . $item->photo_url}})"></div>
                <div class="p-3 px-md-4 pb-0  position-relative text-center"> 
                  <br><br><br>
                  <div class="mb-1 text-accent bold-600">{!! $item->name !!}</div>
                  <div class="mb-2 text-accent">{!! $item->title !!}</div>
                  <div class="px-md-3 swiper-description">{!! $item->content !!}</div>
                </div>
              </div>
             @endforeach
            </div>
          </div>
          <div class="position-absolute show-on-hover w-100 bg-danger swiper-navigations">
            <span class="hover-icon-left full-opacity-on-hover swiper-prev float-left ml-3">
              <div class="icon box-30"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6"><polygon class="fill-primary"  points="52.51 45.8 77.5 2.5 2.5 45.8 77.5 89.1 52.51 45.8"/></svg></div>
            </span>
            <span class="hover-icon-right  full-opacity-on-hover swiper-next float-right mr-3 ">
              <div class="icon box-30 "> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6"><polygon class="fill-primary" points="27.49 45.8 2.5 2.5 77.5 45.8 2.5 89.1 27.49 45.8"/></svg></div>
            </span>
          </div>
          <div class="w-100 mt-4 d-flex justify-content-center align-items-center">
            @foreach($quotations as $item) 
            <span class="swiper-indicator mx-1"></span>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </div>
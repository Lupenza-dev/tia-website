<div class=" mb-2  p-0 h-100 flow-hidden last-no-border has-hover-text-primary">
    <div class="h-100 d-flex px-0 bg-white rounded-slight align-items-center hover-bg has-hover-bounce">
      <div class=" w-100 d-flex flex-column align-items-center">
        <div class="d-flex flex-column align-items-center px-2 cursor-pointer">
          <div class="hover-bounce text-primary image-with-overlay" style="font-size:3.5em"> <img
              src="{{asset('images/icons/icons-04.png')}}" class="hover-bounce" style="width: 60px; height:auto"></div>

          <div class="text-primary text-uppercase mt-2 text-bold"> {{$welcome_note->title}} </div>
          <div class="border-bottom-primary-thick my-2 w-40"></div>
          <h6 class="faded cursor-pointer border-top-primary-thick p-3 p-lg-4 text-center"> {!! str_limit($welcome_note->content, 100) !!}
          </h6>
          <div class="my-2 text-center text-white">

            <a href="#"
              class="readmore w-100 has-hover-bounce border bg-primary hover-bg-primary d-inline-block px-3 py-2 rounded-medium text-white   cursor-pointer  ">
              <div>
                <span>View More</span>
                <i class="fa fa-chevron-right"></i>
              </div>

            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
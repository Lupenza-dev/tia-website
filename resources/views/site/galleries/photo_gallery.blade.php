@extends('site.inner')

@section('title')
    {!! $gallery->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('galleries/listing/photos')}}">{{ label('lbl_photo_gallery') }}</a></li>
<li class="breadcrumb-item active" aria-current="page"> {!! str_limit(strip_tags($gallery->title) , 25) !!}  </li>
@endsection

@section('page_title')
{!! $gallery->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="row mx-0">
					
                    <div class="col-12 px-0 d-block border-bottom">
                        <div class="rich-text pb-3">
                            {!! $gallery->content !!}
                        </div>
                    </div>
                    <div class="col-12 px-0 pt-3">
                        <div class="row gray-border mb-3 photos">
                            @forelse($photos as $key => $photo)                                        
                                <div class="col-md-3 p-2 ">
                                    <a  href="{{asset('uploads/gallery/'.$photo->filename)}}" class="media-container d-block zoom photos h-100 position-relative gray-border border">
                                        <div class="card-image-full image-holder" style="background-image: url('{{asset('uploads/gallery/'.$photo->filename)}}');"> </div>
                                        <div class="calendar-pad position-absolute p-1"> 
                                            <div class="date-day text-center">{!! date('j', strtotime($photo->created_at)) !!}</div>
                                            <div class="date-month text-center">{!! date('M y', strtotime($photo->created_at)) !!}</div>
                                        </div>                                                
                                        <div class="p-3 pb-3"> 
                                            <h6 class=""> 
                                                <span class="hover-underline title-caption" data-title="{{$photo->content}}"> 
                                                    {!! str_limit($photo->content, 120) !!} 
                                                </span>
                                            </h6>
                                        </div>
                                    </a>                
                                </div>
                            @empty
                                <div class="col-12 p-3 text-muted">
                                    {{ label('lbl_no_information') }}
                                </div>
                            @endforelse
                        </div>
                    </div>
											
				</div>
  
			</div>
			
		</div>
		
	</div>
</div>

@endsection

@section('js-content')
 <script> 
       $(document).ready(function() {
          // $('.photo').each(function() {
              $(".photos").magnificPopup({
                  type: 'image',
                  delegate: '.media-container',
                  gallery: {
                      enabled: true
                  },
                   image: {
                    titleSrc: function(item) {
                        return item.el.find('.title-caption').attr('data-title');
                    }
                  }
              });
          // })

          $( ".media-container" ).click(function() {
             this.firstElementChild.click();
          });

          $( ".image-details" ).click(function() {
             
             event.stopImmediatePropagation();
             this.parentElement.click();
          });
      });
  </script>
@endsection

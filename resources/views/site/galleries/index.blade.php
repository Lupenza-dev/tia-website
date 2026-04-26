@extends('site.inner')
@section('title')
    {!! label('lbl_photo_gallery') !!}
@endsection

@section('breadcrumb')
{{ breadcrumb() }}
@endsection

@section('page_title')
{!! label('lbl_photo_gallery') !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="row mx-0">
					
                    @if($galleries)
                
                        @foreach($galleries as $key => $album)
                            <div class="col-12 px-0 mt-3">
                                <a class="d-block link" href="{{url('photos/'.$album->slug)}}">
                                        <h5 class=" text-bold section-head py-2"> 
                                        <i class="fa fa-folder pr-2"> </i>
                                        <span>  {{ $album->title}} </span>   
                                        <span> ({{ count($album['photos']) }})  </span>                            
                                        </h5>
                                <a>
                                {{-- <hr> --}}
                                <div class="row gray-border mb-3 mt-2 photos">                           
                                    @forelse( $album['photos']->slice(0,4) as $key => $photo)                                        
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
                                                        {!! str_limit($photo->content, 50) !!} 
                                                        </span>
                                                    </h6>            
                                                </div>
                                            </a>                
                                        </div>
                                    @empty
                                        <div class="col-12 px-3 text-muted">
                                            {{ label('lbl_no_information') }}
                                        </div>
                                    @endforelse
                                </div>
                            </div>                      
                        @endforeach 
                        
                
                        <div class="col-12 px-0 pt-5 pb-3 d-flex justify-content-center">
                            {!!  $galleries->render() !!}
                        </div>
                    @else
                        <div class="col-12 px-0 bold-600">
                            {{ label('lbl_no_information') }}
                        </div>
                    @endif
											
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
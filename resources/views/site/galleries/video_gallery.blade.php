@extends('site.inner')

@section('title')
    {!! $album->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('galleries/listing/videos')}}">{{label('lbl_videos_gallery')}}</a></li>
<li class="breadcrumb-item active" aria-current="page"> {!! str_limit(strip_tags($album->title) , 25) !!}  </li>
@endsection

@section('page_title')
{!! $album->title  !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="row mx-0">
					
                    <div class="col-12 px-0 d-block border-bottom">
                        <div class="rich-text pb-3">
                            {!! $album->content !!}
                        </div>
                    </div>
                    <div class="col-12 px-0 pt-3">
                        <div class="row gray-border mb-3 photos">                           
                            @foreach($videos as $key => $video)
                                <div class="col-md-3 media-thumbnail p-2 ">
                                    <a href="{{$video->url}}" target="_blank" rel="noopener noreferrer" class="popup-youtube position-relative gray-border border d-block w-100  h-100 ">
                                        <div class="text-center play-button "> <i class="fa fa-play"></i> </div>   
                                        <div class="card-image-full" style="background-image: url('{{ youtube_thumbnail($video->url) }}');"> </div>
                                        <div class="p-3 pb-3"> 
                                            <h6 class=""><span class="hover-underline"> {!! str_limit($video->title, 120) !!} </span></h6>            
                                        </div>
                                    </a>
                                </div>
                            @endforeach 
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

        });
    </script>
@stop


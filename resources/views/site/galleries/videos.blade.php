@extends('site.inner')

@section('title')
    {!! label('lbl_videos_gallery') !!}
@endsection

@section('breadcrumb')
{{ breadcrumb() }}
@endsection

@section('page_title')
{!! label('lbl_videos_gallery') !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="row mx-0">
					
                    @if($albums)
    
                        @foreach($albums as $keys => $album)
                            <div class="col-12 px-0 mt-3">
                                <a class="d-block" href="{{url('videos/'.$album->slug)}}">
                                    <h5 class=" text-bold section-head py-2"> 
                                        <i class="fa fa-folder pr-2"> </i>
                                        <span>  {{ $album->title}} </span>   
                                        <span> ({{ count($album['videos']) }})  </span>                                        
                                    </h5>
                                <a>
                                
                                <div class="row gray-border mb-3 mt-2">                              
                                    @forelse($album['videos']->slice(0,4) as $key => $video)
                                        <div class="col-md-3 media-thumbnail p-2 ">
                                            <a target="_blank" rel="noopener noreferrer" href="{{$video->url}}" class="popup-youtube position-relative gray-border border d-block w-100  h-100 ">
                                                <div class="text-center play-button "> <i class="fa fa-play"></i> </div>   
                                                <div class="card-image-full" style="background-image: url('{{ youtube_thumbnail($video->url) }}');"> </div>
                                                <div class="p-3 pb-3"> 
                                                <h6 class=""><span class="hover-underline"> {!! str_limit($video->title, 50) !!} </span></h6>            
                                                </div>
                                            </a>
                                        </div>
                                    @empty
                                        <div class="col-12 px-0 px-3 text-muted">
                                            {{ label('lbl_no_information') }}
                                        </div>
                                    @endforelse
                                </div>
                            </div>                                      
                        @endforeach 
                        
    
                        <div class="col-12 px-0 pt-5 pb-3 d-flex justify-content-center">
                            {!!  $albums->render() !!}
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

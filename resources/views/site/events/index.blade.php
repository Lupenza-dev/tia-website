@extends('site.inner')

@section('title')
{!! label('lbl_events') !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_events') }}</li>
@endsection

@section('page_title')
{!! label('lbl_events') !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="row mx-0">
					@if(count($events))
						<div class="col-12 px-0">
							<div class="card-deck mx-0">
								@foreach ($events as $key=>$event)
									<div class="col-12 col-sm-6 col-lg-3 px-0 pb-3 my-2 bg-white border-bottom-r-nolast position-relative rounded overflow-hidden d-flex align-items-center ">
										<div class="w-100 h-100 p-2 position-relative ">      
											<a href="{{url('events/'.$event->slug)}}" class="d-block border w-100 h-100 align-items-center zoom-container p-0">
												<div class="p-0">
													<div class="full-hd-container rounded overflow-hidden">
														<img src="{{asset('uploads/events/'.$event->photo_url)}}">
													</div>
												</div>
												<div class="p-2">
													<div class="text-muted bold-600 w-100 item-date">
														<span class="d-inline-block mr-3">
															<i class="fa fa-calendar-alt mr-1"></i> {!! date('d M, Y', strtotime($event->event_date)) !!}
														</span>
														<span class="d-inline-block">
															<i class="fa fa-map-marker mr-1"></i> {!! $event->location !!}
														</span>
													</div>       
													<div> {!! str_limit(strip_tags($event->title) ,120) !!} </div>  
												</div>
											</a>                    
										</div>
									</div>
								@endforeach
							</div>
						</div>

						<div class="col-12 px-0 mt-5 d-flex justify-content-center">
							{!! $events->render() !!}
						</div>
					@else
						<div class="col-12 px-0 py-3">
							{{label('lbl_no_information')}}
						</div>
					@endif
											
				</div>
  
			</div>
			
		</div>
		
	</div>
</div>

@stop
@extends('site.inner')

@section('title')
{!! label('lbl_contact') !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_contact') }}</li>
@endsection

@section('page_title')
{!! label('lbl_contact') !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="row pr-md-5">
                        

                    <div class="col-12 px-0 mt-2">
                        @if(count($regional_offices))
                            <div class="row mx-0">

                                <div class="col-12 px-0">
                                    <div class="row">
                                        @foreach ($regional_offices as $key=>$office)
                                            <div class="col-md-3 mb-3">
                                                <div class="box-shadow border h-100 rounded-medium overflow-hidden">
                                                    <h5 class="other-heading bg-light-dark p-2 px-3 drafted text-primary">
                                                        <div class=""><i class="fa fa-hotel pr-2 "></i>{{$office->name}}</div>
                                                    </h5>
                                                    <div class="box-body p-3">
                                                        <div class="d-flex align-items-start">
                                                            <i class="fa fa-map-signs pr-2 mt-2"></i>
                                                            <address>
                                                                <strong>{{ label('lbl_site_title') }}</strong><br>
                                                                {!! nl2br($office->physical_address) !!}
                                                            </address>
                                                        </div>

                                                        @if($office->email)
                                                            <div class="d-flex">
                                                                <i class="fa fa-envelope pr-2 mt-2"></i>
                                                                <address>
                                                                    <strong>{{label('lbl_email')}}</strong><br>
                                                                    <a href="mailto:{{$office->email}}"> {{$office->email}} </a>
                                                                </address>
                                                            </div>
                                                        @endif

                                                        @if($office->toll_free || $office->phone)
                                                            <div class="d-flex">
                                                                <i class="fa fa-phone pr-2 mt-2"></i>
                                                                <address>
                                                                    <strong>{{ label('lbl_telephone').'/'.label('lbl_fax') }}</strong><br>
                                                                    @if($office->toll_free)
                                                                        <strong title="Toll Free">{{ label('lbl_toll_free') }}: </strong> <a href="tel:{{$office->toll_free}}"> {{$office->toll_free}} </a> <br>
                                                                    @endif
                                                                    @if($office->phone)
                                                                        <strong title="Phone">{{ label('lbl_phone') }}: </strong> <a href="tel:{{$office->phone}}"> {{$office->phone}} </a> <br>
                                                                    @endif
                                                                    @if($office->fax)
                                                                        <strong title="Fax">{{ label('lbl_fax') }}: </strong> <a href="fax:{{$office->fax}}"> {{$office->fax}} </a>
                                                                    @endif
                                                                </address>
                                                            </div>
                                                        @endif

                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>


                                <div class="col-12 px-0 mt-3  py-4">

                                    <ul class="nav  nav-tabs text-bold overflow-hidden rounded-top-medium  bg-light-dark drafted" id="myTab" role="tablist">
                                        <li class="nav-item p-1 d-flex h-100 align-items-center"><a class="nav-link border-0"><i class="label fa fa-map-marker-alt"> </i></a> </li>

                                        @foreach ($regional_offices as $key => $office)
                                            @if($office->maps)
                                                <li class="nav-item p-1" role="presentation">
                                                    <a class="nav-link border-0 @if($key==0) active  @endif" id="map{{$key}}-tab" data-toggle="tab" href="#map{{$key}}" role="tab" aria-controls="map{{$key}}" aria-selected="@if($key==0) true @else false  @endif">
                                                        <span class=" "> {{$office->name}} </span>
                                                    </a>
                                                </li>
                                            @endif
                                        @endforeach
                                    </ul>

                                    <div class="tab-content bg-ligh-dark p-3 px-4 border border-top-0 rounded-bottom-medium" id="myTabContent" style="height: 400px;">
                                        @foreach ($regional_offices as $key => $office)
                                            @if($office->maps)
                                                <div class="tab-pane fade h-100 @if($key==0) show active  @endif" id="map{{$key}}" role="tabpanel" aria-labelledby="map{{$key}}-tab">
                                                    <div style="height:350px" class="google-map">
                                                        {!! $office->maps->url !!}
                                                    </div>
                                                </div>
                                            @endif
                                        @endforeach
                                    </div>

                                </div>

                            </div>

                            <div class="col-12 px-0 pt-4 d-flex justify-content-center">
                                {!! $regional_offices->render() !!}
                            </div>
                        @endif
                    </div>

                </div>
  
			</div>
			
		</div>
		
	</div>
</div>

@stop





{{-- <div style="height:350px" class="google-map">
    @if (! empty($google_maps))
    {!! $google_maps->url !!}
    @endif
</div> --}}


{{-- <div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
    <div class="col-12 px-0 px-xl-5 pt-3">
    
        <div class="row mx-0">
            <div class="col-12 px-0 my-2 page-content">

                <div class="">
                    <h3 class="main-heading"> {{ label('lbl_contact') }} </h3>
                    <div class="main-heading-border"></div>
                </div>

                <div class="row mx-0">
                        
                    <div class="col-lg-6 px-0 pr-md-5 mt-3">
                        <div class="col-12 px-0">
                           
                            @if($headquarter)                              
                                <address>
                                    <strong>{{ label('lbl_site_subtitle') }}</strong><br>
                                    <strong>{{ label('lbl_site_title') }}</strong><br>
                                    {!! nl2br($headquarter->physical_address) !!}
                                </address>

                                @if($headquarter->email)
                                    <address>
                                        <strong class="text-faded">{{label('lbl_email')}}</strong><br>
                                        <a href="mailto:{{ $headquarter->email }}">{{ $headquarter->email }}</a>
                                    </address>
                                @endif
                                
                                <address>
                                    <strong class="text-faded">{{label('lbl_telephone')}}</strong><br>
                                    @if($headquarter->toll_free)
                                        <span title="Telephone" class="text-muted">{{label('lbl_telephone')}}:</span> 
                                        <a href="tel:{{ $headquarter->toll_free }}">{{ $headquarter->toll_free }}</a><br>
                                    @endif
                                    @if($headquarter->phone)
                                        <span title="Phone" class="text-muted">{{label('lbl_phone')}}:</span> 
                                        <a href="tel:{{ $headquarter->phone }}">{{ $headquarter->phone }}</a><br>
                                    @endif
                                </address>
                                
                                @if($headquarter->fax)
                                    <address>
                                        <strong class="text-faded">{{label('lbl_fax')}}</strong><br>
                                            <span title="Fax" class="text-muted">{{label('lbl_fax')}}:</span> 
                                            <a href="fax:{{ $headquarter->fax }}">{{ $headquarter->fax }}</a><br>
                                    </address>
                                @endif
                            @endif

                            @if ($offices_count > 1)
                                <div class="d-flex justify-content-start">
                                    <a class="d-block py-2 bold-600 text-primary" href="{{ url('offices') }}">
                                        <span class="pr-1 text-primary"> <i class="fa fa-plus-circle"> </i></span>
                                        <span>{{ label('lbl_view_offices') }}</span>
                                    </a>
                                </div> 
                            @endif



                            <div class="col-12 border-bottom p-0 container  mb-2">
                                @if (count($social_links) > 0)
                                    <h4 class="footer-media pt-4 pb-0 mb-0 text-faded">
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
                                        @endforeach
                                    </h4>
                                @endif
                            </div>
                        </div>
                    </div>
                    
                </div>

            </div>
        </div>
        
    </div>
</div> --}}
@extends('site.inner')

@section('title')
{!! label('lbl_feedback') !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_feedback') }}</li>
@endsection

@section('page_title')
{!! label('lbl_feedback') !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-12 px-0 my-2 page-content">
  
				<div class="row">
                    <div class="col-12 px-0 mt-2">
                        <div class="row mx-0 bg-light-dark p-3 py-lg-5">
                            @if(session('status') == 'success')
                                <div class="col-lg-8 col-12">
                                    <div class="alert alert-success alert-dismissible fade show bold-600" role="alert">
                                        <strong> {{ label('lbl_feedback_success') }} </strong>
                                    </div>
                                </div>
                            @else
                                <div class="col-lg-6 col-md-8 col-12">
                                    @if(!empty($seo->recaptcha_site_key) && !empty($seo->recaptcha_secret_key))
                                        <form class=""  method="POST" action="{{url('complaints')}}" autocomplete="off" accept-charset="UTF-8">      
                                            {{ csrf_field() }}  
                                        
                                            <div class="form-group">
                                                <div class="g-recaptcha"
                                                    data-sitekey="{{$seo->recaptcha_site_key}}">
                                                </div>
                                                <div class="mt-1"><span class='form_error' style="color:red;">{!! $errors->first('g-recaptcha-response') !!}</span></div>
                                            </div>
                    
                                            <div class="form-group">
                                                <label for="first_name">{{label('lbl_fullname')}}</label>
                                                <input required value="{{ old('first_name') }}" type="text" name="first_name" class="form-control" id="first_name" placeholder="Jane Doe">
                                                <div class="mt-1"><span class='form_error' style="color:red;">{!! $errors->first('first_name') !!}</span></div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="email">{{label('lbl_email')}}</label>
                                                <input required value="{{ old('email') }}" type="email" name="email" class="form-control" id="email" placeholder="example@email.com">
                                                <div class="mt-1"><span class='form_error' style="color:red;">{!! $errors->first('email') !!}</span></div>
                                            </div>
                                            
                                            {{-- <div class="form-group">
                                                <label for="phone">{{label('lbl_phone_number')}}</label>
                                                <input required value="{{ old('phone') }}" type="text" name="phone" class="form-control" id="phone" placeholder="">
                                                <div class="mt-1"><span class='form_error' style="color:red;">{!! $errors->first('phone') !!}</span></div>
                                            </div> --}}
                                            
                                            {{-- <div class="form-group">
                                                <label for="organization">{{label('lbl_organization')}}</label>
                                                <input value="{{ old('organization') }}" type="text" name="organization" class="form-control" id="organization" placeholder="">
                                                <div class="mt-1"><span class='form_error' style="color:red;">{!! $errors->first('organization') !!}</span></div>
                                            </div> --}}
                                            
                                            {{-- <div class="form-group">
                                                <label for="subject">{{label('lbl_subject')}}</label>
                                                <input required value="{{ old('subject') }}" type="text" name="subject" class="form-control" id="subject" placeholder="">
                                                <div class="mt-1"><span class='form_error' style="color:red;">{!! $errors->first('subject') !!}</span></div>
                                            </div> --}}
                                            
                                            <div class="form-group">
                                                <label for="message">{{label('lbl_message')}}</label>
                                                <textarea required type="text" name="message" class="form-control" id="message" placeholder="">{{ old('message') }}</textarea>
                                                <div class="mt-1"><span class='form_error' style="color:red;">{!! $errors->first('message') !!}</span></div>
                                            </div>
                                            
                                            <button type="submit" class="btn btn-primary">{{label('lbl_submit')}}</button>
                    
                                        </form>
                                    @else
                                        <div class="py-3 bold-600">
                                            {{ label('lbl_no_information') }}
                                        </div>
                                    @endif
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
  
			</div>
			
		</div>
		
	</div>
</div>

@stop
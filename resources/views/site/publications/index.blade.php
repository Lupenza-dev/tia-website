@extends('site.inner')

@section('title')
{!! label('lbl_publications') !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_publications') }}</li>
@endsection

@section('page_title')
{!! label('lbl_publications') !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
  <div class="col-12 px-0 px-xl-5">
  
      <div class="row mx-0">
          <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

              <div class="row mx-0">
                      
                @if(count($categories))
                  <div class="col-12 col-lg-8 px-0">
                    <ul class="list-group list-group-flush mb-md-3 pt-1">

                      @foreach ($categories as $category)
                        <li class="list-group-item py-3 px-0">
                          <a href="{{ url('publications/'.$category->slug)}} " class="py-3 ">
                            <i class="fa fa-folder pr-3"> </i>  {{ str_limit(strip_tags( $category->title ),50)}} 
                          </a>
                        </li>
                      @endforeach
                      
                    </ul>
                  </div>

                  <div class="col-12 pt-5 pb-3 d-flex justify-content-center">
                    {!! $categories->render() !!}
                  </div>

                @else
                  <div class="col-12 px-0 bold-600">
                    {!! label('lbl_no_information') !!}
                  </div>
                @endif
                  
              </div>

          </div>
          <div class="col-lg-4 px-0">
              @include('site.includes/sidebar')
          </div>
      </div>
      
  </div>

</div>

@stop


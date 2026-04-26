@extends('site.inner')
@section('title')
{!! $category->title !!}
@endsection

@section('breadcrumb')
{{breadcrumb()}}
@endsection

@section('page_title')
{!! $category->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
  <div class="col-12 px-0 px-xl-5">
  
      <div class="row mx-0">
          <div class="col-lg-8 px-0 my-2 pr-lg-5 page-content">

              <div class="row mx-0">
                      
                @if (count($publications))

                  <div class="col-12 px-0 mt-2">
                    @foreach ($publications as $publication)
                        <div class="col px-0">  
                          <div class="d-flex align-items-center h-100 w-100 pointer-hover border-bottom-secondary-thin position-relative">                                    
                              <a target="_blank" rel="noopener noreferrer" href="{!! asset('uploads/documents/'.$publication->file)!!}" class="py-3 d-flex w-100 list-item  align-items-center">
                                  <i class="fa fa-file-download pr-4 c-red align-self-center text-lg"></i>
                                  <i class="fa fa-file-pdf pr-4 text-muted align-self-center text-lg"></i>
                                  <div class="">
                                      <div class="bold-600 text-muted">{!! date('d M, Y', strtotime($publication->published_date)) !!}</div>
                                      <div>{!! $publication->title !!}</div>
                                  </div>   
                              </a>
                          </div>
                        </div>
                    @endforeach
                  </div>

                  <div class="col-12 pt-5 pb-3 d-flex justify-content-center">
                    {!! $publications->render() !!}
                  </div>

                @else
                  <div class="col-12 bold-600 px-0 py-3 text-muted">
                    {{label('lbl_no_information')}}
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

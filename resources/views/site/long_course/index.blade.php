@extends('site.inner')
@section('title')
{!! label('lbl_courses') !!}
@endsection


@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_courses') }}</li>
@endsection

@section('page_title')
{!! label('lbl_courses')  !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-8 px-0 my-2 page-content">
  
				<div class="row mx-0 box-shadow border rounded-medium overflow-hidden mb-5 mx-2">
                    <div class="card">
                        <div class="card-header" >  <h5>{{ label('lbl_long_courses') }}</h5> </div>
                 
                        <div class="card-body">
                            @if($long_courses->count() == 0)

                                <div class="col-md-12">
                                    <div class="alert alert-primary" role="alert">{{ label('lbl_no_information') }}	</div>
                                </div>
                            @else

                            <div class="table-responsive " >
                                <table class="table table-striped" style="width:100%;
                                table-layout: fixed;
                                overflow-wrap: break-word;">
                                    <thead>
                                      <tr>
                                        <th scope="col">{{label('lbl_programme')}}</th>
                                        <!-- <th scope="col">{{label('lbl_entry_qualifcation')}} </th> -->
                                        <th scope="col">{{label('lbl_fee')}}</th>
                                        <th scope="col">{{label('lbl_campus')}}</th>
                                        <th scope="col"></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($long_courses as $course)
                                        @php
                                            $options = [
                                                'join' => ', ',
                                                'parts' => 2,
                                                'syntax' => \Carbon\CarbonInterface::DIFF_ABSOLUTE,
                                            ];
                                            $duration = null;
                                            $start  = new \Carbon\Carbon($course->start_date);
                                            $end    = new \Carbon\Carbon($course->end_date);
                                            $duration = $end->diffForHumans($start, $options);
                                        @endphp
                                        <tr>
                                            <td class="align-middle">{{ $course->title }}</td>
                                            <!-- <td class="align-middle">{{ $course->entry_qualification }}</td> -->
                                            <td class="align-middle">{{ $course->fee }}</td>
                                            <td class="align-middle">{{ $course->campus }}</td>
                                      
                                            <td class="align-middle"><a class='btn btn-success btn-sm' href="{{ url('long_courses/' . $course->slug) }}">Course Details</a></td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                                <div class="row justify-content-center">
                                    {!! $long_courses->render() !!}
                                </div>
                            @endif

                        </div>
                    </div>
											
				</div>
  
			</div>
            <div class="col-lg-4 px-0">
                @include('site.includes/sidebar')
            </div>
		</div>
		
	</div>
</div>
@include('site.includes.quotes')

@stop
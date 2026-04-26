@extends('site.inner')
@section('title')
{!! label('lbl_short_courses') !!}
@endsection


@section('breadcrumb')
<li class="breadcrumb-item active" aria-current="page">{{ label('lbl_short_courses') }}</li>
@endsection

@section('page_title')
{!! label('lbl_short_courses')  !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
	<div class="col-12 px-0 px-xl-5">
	
		<div class="row mx-0">
			<div class="col-lg-8 px-0 my-2 page-content ">
  
				<div class="row mx-0 box-shadow border rounded-medium overflow-hidden mb-5 mx-2">
                    @foreach($months as $row)
                    <?php
                    $monthNum  = $row->month;
                    $dateObj   = DateTime::createFromFormat('!m', $monthNum);
                    $monthName = $dateObj->format('F');

                     ?>
                    <div class="card">
                        <div class="card-header" > <h5>{{ $monthName }}  {{ $row->year }}</h5></div>
                        <div class="card-body">
                            @if($short_courses->count() == 0)

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
                                        <th scope="col">{{label('lbl_title')}}</th>
                                        <th scope="col">{{label('lbl_category')}}</th>
                                        <th scope="col">{{label('lbl_start_date')}}</th>
                                        <th scope="col">{{label('lbl_end_date')}}</th>
                                        <th scope="col">{{label('lbl_duration')}}</th>
                                        <th scope="col">{{label('lbl_venue')}}</th>
                                        
                                        <th scope="col"></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($short_courses as $course)
                                        @php
                                            $options = [
                                                'join' => ', ',
                                                'parts' => 2,
                                                'syntax' => \Carbon\CarbonInterface::DIFF_ABSOLUTE,
                                            ];
                                            $duration = null;
                                            $start  = new \Carbon\Carbon($course->start_date);
                                            $end    = new \Carbon\Carbon($course->end_date);
                                            $month = $start->format('m');
                                            $duration = $end->diffForHumans($start, $options);
                                        @endphp
                                        @if($month == $row->count)
                                        <tr>
                                            <td class="align-middle">{{ $course->title }}</td>
                                            <td class="align-middle">{{ $course->category }}</td>
                                            <td class="align-middle">{{ $course->start_date }}</td>
                                            <td class="align-middle">{{ $course->end_date }}</td>
                                            <td class="align-middle">{{ $duration }}</td>
                                            <td class="align-middle">{{ $course->venue }}</td>
                                            
                                            <td class="align-middle"><a class='btn btn-success btn-sm' href="{{ url('short_courses/' . $course->slug) }}">Course Details</a></td>
                                        </tr>
                                        @endif
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                                <div class="row justify-content-center">
                                    {!! $short_courses->render() !!}
                                </div>
                            @endif

                        </div>
                    </div>
					@endforeach						
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
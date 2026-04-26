<div class="rounded-medium ">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" >
            <a class="nav-link active py-3 text-primary" id="campus-course-description-tab" 
            data-toggle="tab" href="#campus-course-description" role="tab" aria-controls="campus-course-description" aria-selected="true"><h5>Course Description</h5></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="course-overview-tab" 
            data-toggle="tab" href="#course-overview" role="tab" aria-controls="course-overview" aria-selected="true"><h5>Course overview</h5></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="target-audience-tab" 
            data-toggle="tab" href="#target-audience" role="tab" aria-controls="target-audience" aria-selected="true"><h5>Target Audience</h5></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="expected-benefit-tab" 
            data-toggle="tab" href="#expected-benefit" role="tab" aria-controls="expected-benefit" aria-selected="true"><h5>Expected benefits</h5></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="course-coodinator-tab" 
            data-toggle="tab" href="#course-coodinator" role="tab" aria-controls="course-coodinator" aria-selected="true"><h5>Course Coordinator Contacts </h5></a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="campus-course-description" role="tabpanel" aria-labelledby="campus-course-description-tab">{!! $course->description !!}<br><br></div>
        <div class="tab-pane fade" id="course-overview" role="tabpanel" aria-labelledby="course-overview-tab">{!! $course->course_overview !!}</div>
        <div class="tab-pane fade" id="target-audience" role="tabpanel" aria-labelledby="target-audience-tab">{!! $course->target_audience !!}</div>
        <div class="tab-pane fade" id="expected-benefit" role="tabpanel" aria-labelledby="expected-benefit-tab">{!! $course->expected_benefit !!}</div>
        <div class="tab-pane fade" id="course-coodinator" role="tabpanel" aria-labelledby="course-coodinator-tab">{!! $course->course_coodinator !!}</div>
    </div>
</div>
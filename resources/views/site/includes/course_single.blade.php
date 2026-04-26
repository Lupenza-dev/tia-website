<div class="rounded-medium ">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" >
            <a class="nav-link active py-3 text-primary" id="campus-course-description-tab" 
            data-toggle="tab" href="#campus-course-description" role="tab" aria-controls="campus-course-description" aria-selected="true"><span>{{label('lbl_course_description')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="course-overview-tab" 
            data-toggle="tab" href="#course-overview" role="tab" aria-controls="course-overview" aria-selected="true"><span>{{label('lbl_course_overview')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="target-audience-tab" 
            data-toggle="tab" href="#target-audience" role="tab" aria-controls="target-audience" aria-selected="true"><span>{{label('lbl_target_audience')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="expected-benefit-tab" 
            data-toggle="tab" href="#expected-benefit" role="tab" aria-controls="expected-benefit" aria-selected="true"><span>{{label('lbl_expected_benefits')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="course-coodinator-tab" 
            data-toggle="tab" href="#course-coodinator" role="tab" aria-controls="course-coodinator" aria-selected="true"><span>{{label('lbl_course_cordinator_contact')}} </span></a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="campus-course-description" role="tabpanel" aria-labelledby="campus-course-description-tab">
        <div class="card">
        <div class="card-body">
        {!! $course->description !!}
        </div>  
        </div>  
        </div>
        <div class="tab-pane fade" id="course-overview" role="tabpanel" aria-labelledby="course-overview-tab">
        <div class="card">
        <div class="card-body">    
        {!! $course->course_overview !!}</div></div></div>
        <div class="tab-pane fade" id="target-audience" role="tabpanel" aria-labelledby="target-audience-tab">
        <div class="card">
        <div class="card-body">    
        {!! $course->target_audience !!}
</div>
</div> 
    </div>
        <div class="tab-pane fade" id="expected-benefit" role="tabpanel" aria-labelledby="expected-benefit-tab">
        <div class="card">
        <div class="card-body">    
        {!! $course->expected_benefit !!}</div>
</div>
</div>
        <div class="tab-pane fade" id="course-coodinator" role="tabpanel" aria-labelledby="course-coodinator-tab">
        <div class="card">
        <div class="card-body">    
        {!! $course->course_coodinator !!}</div>
</div>
</div>
    </div>
</div>
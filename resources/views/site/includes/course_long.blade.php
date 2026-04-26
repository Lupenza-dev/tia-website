<div class="rounded-medium ">

    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" >
            <a class="nav-link active py-3 text-primary" id="campus-course-description-tab" 
            data-toggle="tab" href="#entry-qualifications" role="tab" aria-controls="campus-course-description" aria-selected="true"><span>{{label('lbl_entry_qualifcation ')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="course-overview-tab" 
            data-toggle="tab" href="#Programmes-Structure" role="tab" aria-controls="course-overview" aria-selected="true"><span>{{label('lbl_program_structure')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="target-audience-tab" 
            data-toggle="tab" href="#Fees-Structure" role="tab" aria-controls="target-audience" aria-selected="true"><span>{{label('lbl_fee_structure')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="expected-benefit-tab" 
            data-toggle="tab" href="#Programme_Coordinatort" role="tab" aria-controls="expected-benefit" aria-selected="true"><span>{{label('lbl_programme_cordinator')}}</span></a>
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="course-coodinator-tab" 
            data-toggle="tab" href="#Programme_Outcomes" role="tab" aria-controls="course-coodinator" aria-selected="true"><span>{{label('lbl_programme_outcomes')}} </span></a>

  
        </li>
        <li class="nav-item" >
            <a class="nav-link py-3 text-primary" id="course-coodinator-tab" 
            data-toggle="tab" href="#Assessment" role="tab" aria-controls="course-coodinator" aria-selected="true"><span>{{label('lbl_accessment')}}  </span></a>

            
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="entry-qualifications" role="tabpanel" aria-labelledby="campus-course-description-tab">  <div class="card">
        <div class="card-body"> {!! $course->entry_qualification !!}
</div>
</div>
        </div>
        <div class="tab-pane fade" id="Programmes-Structure" role="tabpanel" aria-labelledby="course-overview-tab">
        <div class="card">
        <div class="card-body">     
        {!! $course->program_structure !!}
</div>
</div></div>
        <div class="tab-pane fade" id="Fees-Structure" role="tabpanel" aria-labelledby="target-audience-tab">
        <div class="card">
        <div class="card-body">     
        {!! $course->fee_structure !!}</div>
</div>
</div>
        <div class="tab-pane fade" id="Programme_Coordinatort" role="tabpanel" aria-labelledby="Programme_Coordinatort-tab">
        <div class="card">
        <div class="card-body"> {!! $course->program_cordinator !!}</div>
</div>
</div>
        <div class="tab-pane fade" id="Programme_Outcomes" role="tabpanel" aria-labelledby="Programme_Outcomes-tab">
        <div class="card">
        <div class="card-body"> 
            {!! $course->program_outcomes !!}</div>
</div>
</div>
        <div class="tab-pane fade" id="Assessment" role="tabpanel" aria-labelledby="Assessment-tab">
        <div class="card">
        <div class="card-body"> {!! $course->assesment !!}</div>
</div>
</div>

    </div>
</div>
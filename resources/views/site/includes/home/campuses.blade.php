
    <div class="h-100 d-flex flex-column" data-aos="zoom-in">
        <a href="#" class="d-block">
            <h5 class="pb-3 pb-lg-3 section-heading">
                <span class="text-primary text-bold py-1 d-inline-block lines position-relative">
                    <div class="p-sm-2 py-1 text">
                        <i class="fa fa-university pr-2  align-self-center"></i>TPSC Campuses and
                        Centers
                    </div>
                    <span class="position-absolute view-all">
                        <!-- <i class="fa fa-arrow-right"> </i> <span class="pl-2 more d-inline-block" style=" white-space: nowrap;">View More</span> -->
                    </span>
                </span>
            </h5>
        </a>
        @foreach ($campuses as $campus)
            <div class="col px-0 pb-1 rounded-slight my-lst">
                <div
                    class="d-flex align-items-center bg-light box-shadow  rounded-slight  h-100 w-100 p-2 pointer-hover  position-relative">
                    <a href="{{ url('campuses/' . $campus->slug) }}" class="d-flex w-100 list-item  align-items-center">
                        <i
                            class="fa fa-angle-double-right  px-2 pr-3  text-faded text-secondary align-self-center"></i>
                        <i
                            class="fa fa-bullseye px-2 pr-3  text-faded text-secondary align-self-center"></i>
                        <span class="d-inline-block text-gray">
                            <div> {!! $campus->title !!} </div>
                        </span>
                    </a>
                </div>
            </div>
        @endforeach
    </div>
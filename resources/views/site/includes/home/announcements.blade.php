<div class="h-100 d-flex flex-column" data-aos="fade-right">
    <a href="{{ url('announcements') }}" class="d-block">
        <h5 class="py-3 pb-lg-3 section-heading border-bottom-primary-fadedddd">
            <span class="text-dark text-bold py-1  d-inline-block lines position-relative">
                <div class="p-sm-2 py-1 text d-inline-flex align-items-center">
                    <span class="round box-50 bg-primary flex-center text-white mr-2 "> 
                        <i class="fa fa-rss align-self-center"></i>
                    </span>
                    {{ label('lbl_announcements') }}
                </div>
                <span class="position-absolute view-all small">
                    <i class="fa fa-arrow-right"> </i> <span class="pl-2 more d-inline-block"
                        style="white-space: nowrap;">{{ label('lbl_view_all') }}</span>
                </span>
            </span>
        </h5>
    </a>
    @foreach ($recent_announcements as $announcement)
        <div class="col px-0 text-hover-primary border-bottom-accent-thin-fadedd pb-1 no-border-lastt  has-new-blink">
            <div
                class="w-100 h-100 p-2  border mb-1 zoom-container rounded-slight pointer-hover position-relative overflow-hidden d-flex align-items-center ">

                <a href="{{ url('announcements/' . $announcement->slug) }}"
                    class="d-flex w-100 list-item  align-items-center">
                    <i class="fa fa-chevron-right px-2 pr-3  text-primary align-self-center"></i>
                    <i class="fa fa-bullhorn px-2 pr-3  text-primary align-self-center"></i>
                    <span class="d-inline-block">
                        <div> {!! str_limit(strip_tags($announcement->name), 120) !!} </div>
                    </span>
                </a>
                <div class="small faded text-right position-absolute w-100 item-date">
                    {!! date('d M, Y', strtotime($announcement->created_at)) !!}</div>
                @if (strtotime('+1 week', strtotime($announcement->created_at)) > strtotime('now'))
                    <span class="fa fa-certificate text-danger position-absolute new-blink">
                    </span>
                @endif
            </div>
        </div>
    @endforeach
    <div class="col rounded d-flex align-items-end justify-content-center p-1 pt-4">
        <a href="{{ url('announcements') }}" class="text-primary text-hover-primary-dark text-bold readmore">
        <span>{{label('lbl_more_announcements')}}</span>
        <i class="fa fa-arrow-right"> </i>
        </a>
    </div>
</div>
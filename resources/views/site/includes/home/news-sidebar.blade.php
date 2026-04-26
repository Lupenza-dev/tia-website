<div class="h-100 d-flex flex-column " data-aos="fade-right">
    <a href="{{ url('news') }}" class="d-block">
        
    </a>
    <div class="coll d-flex flex-column p-3 rounded-medium">
        @foreach ($news_list as $news)
            <div class="col text-hover-accent px-0 border-bottom-color-accent border-bottom-primary-thinnn no-border-last has-new-blink">
                <div
                    class="w-100 h-100  p-2 bg-whiteee  zoom-container pointer-hover position-relative overflow-hidden d-flex align-items-center mb-1 ">
                    <a href="{{ url('news/' . $news->slug) }}"
                        class="d-flex w-100 h-100 align-items-center p-0">
                        <div class="col-4 p-0">
                            <div class="full-hd-container rounded overflow-hidden">
                                <img src="{{ asset('uploads/news/' . $news->photo_url) }}" alt="{{ str_limit(strip_tags($news->title), 30) }}">
                            </div>
                        </div>
                        <div class="p-2 text-dark">
                            <div> {!! str_limit(strip_tags($news->title), 100) !!} </div>
                            <div class="small  faded   text-right position-absolute w-100 item-date">
                                {!! date('d M, Y', strtotime($news->created_at)) !!}
                            </div>
                        </div>
                        @if (strtotime('+1 week', strtotime($news->created_at)) > strtotime('now'))
                            <span class="fa fa-certificate text-danger position-absolute new-blink"> </span>
                        @endif
                    </a>
                </div>
            </div>
        @endforeach
    </div>

</div>
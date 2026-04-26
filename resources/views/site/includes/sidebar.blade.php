<div class="d-none d-lg-block z-index-0" data-aos="fade-left">

    <div class=" box-shadow border rounded-medium overflow-hidden mb-5">
      <div class="h-100 ">  
        {!! getParentId(getUriId()) !!}
        {{-- {!! leftMenu() !!} --}}
      </div>  
    </div>
</div>
<style>
  .nav-link.active>h5{
    font-weight: bold;
    border-bottom: 3px solid #2156a7;
    padding-bottom: 2px;
  }
</style>
  <div class="box-shadow borde rounded-mediumm overflow-hidden mb-5">                  
    <div class="rounded-mediumm ">
      <ul class="nav nav-tabs" style="height:50px;" id="myTab" role="tablist">
          <li class="nav-item h-100" >
              <a class="nav-link active py-3 text-primary h-100" id="news-tab" 
              data-toggle="tab" href="#news" role="tab" aria-controls="news" aria-selected="true"><h5 style="font-size:15px!important">{{label('lbl_news')}}</h5></a>
          </li>
          <li class="nav-item h-100" >
              <a class="nav-link py-3 text-primary h-100" id="announcements-tab" 
              data-toggle="tab" href="#announcements" role="tab" aria-controls="announcements" aria-selected="true"><h5 style="font-size:15px!important">{{label('lbl_announcements')}}</h5></a>
          </li>
      </ul>
      <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="news" role="tabpanel" aria-labelledby="news-tab" style="font-size:15px!important">
            @if(!empty($news_list))
              @include('site.includes.home.news-sidebar')
            @endif  
            
          </div>
          <div class="tab-pane fade" id="announcements" role="tabpanel" aria-labelledby="announcements-tab">
            @if(count($recent_announcements))
              @include('site.includes.home.announcements')
            @endif
          </div>
      </div>
  </div>         
  </div>

</div>
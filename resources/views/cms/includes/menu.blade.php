<ul class="nav ega-inner-navbar">

    {{-- @if(permission('*. .*')) --}}
      <li class="nav-item ega-menu-caption">
          <label>Analytics</label>
      </li>

      <li data-username="dashboard Default cms" class="nav-item @php activeLink(['cms']) @endphp">
          <a href="{{ url('/cms')}}" class="nav-link ">
            <span class="ega-micon"><i class="feather icon-home"></i></span>
            <span class="ega-mtext">Dashboard</span>
          </a>
      </li>
    {{-- @endif --}}

    @if(permission(['*.staffemail.*','*.quick_links.*', '*.related_links.*','*.external_links.*','*.sponsors.*','*.social_links.*',
                  '*.publication.*','*.pressreleases.*','*.publication_categories.*','*.tender.*','*.vacancies.*','*.galleries.*',
                  '*.administration.*','*.administration_categories.*','*.management-groups.*','*.events.*','*.sports.*','*.event-categories.*',
                  '*.pages.*','*.page-categories.*','*.faq.*+']))
      <li class="nav-item ega-menu-caption">
          <label>Site Contents</label>
      </li>
    @endif

    @if(permission(['*.backgrounds.*','*.events.*','*.news.*','*.galleries.*','*.sliders.*']))
    <li data-username="backgrounds sliders news events galleries gallery photos videos audios media" class="nav-item ega-hasmenu
      @php activeLink(['backgrounds','sliders','news','galleries','media','events']) @endphp">
        <a href="javascript:" class="nav-link ">
          <span class="ega-micon"><i class="fas fa-camera-retro"></i></span><span class="ega-mtext">Media Center</span></a>
        <ul class="ega-submenu">

          @if(permission('*.news.*'))
          <li class="@php activeLink(['news']) @endphp"><a href="{{ url('cms/news') }}"> News</a></li>
          @endif

           @if(permission('*.events.*'))
          <li class="@php activeLink(['events']) @endphp"><a href="{{ url('cms/events') }}"> Events</a></li>
          @endif

          @if(permission('*.backgrounds.*'))
          <li class="@php activeLink(['backgrounds']) @endphp"><a href="{{ url('cms/backgrounds') }}"> Backgrounds</a></li>
          @endif
          
          {{-- @if(permission('*.sliders.*'))
          <li class="@php activeLink(['sliders']) @endphp"><a href="{{ url('cms/sliders') }}"> Home Sliders</a></li>
          @endif --}}

          @if(permission('*.galleries.*'))
          <li class="@php activeLink(['galleries', 'media']) @endphp"><a href="{{ url('cms/galleries') }}"> Galleries</a></li>
          @endif

        </ul>
    </li>
    @endif

    @if(permission(['*.passengers.*','*.projects.*','*.notices.*','*.speeches.*','*.press_releases.*','*.programmes.*','*.campus.*','*.services.*','*.faqs.*', '*.reserve.*', '*.welcome.*', '*.announcements.*','*.howdois.*', '*.mission.*','*.vision.*']))
        <li data-username="passengers services projects notices speeches press releases information mission vision welcome announcements biography how do i"
          class="nav-item ega-hasmenu @php activeLink(['passengers','projects','notices','speeches','press_releases','services','background','faqs','welcome','reserve','howdois','announcements','mission','vision']) @endphp">
            <a href="javascript:" class="nav-link ">
              <span class="ega-micon"><i class="feather icon-file-text"></i></span><span class="ega-mtext">Informations</span></a>
            <ul class="ega-submenu">
               @if(permission('*.welcome.*'))
                   <li class="@php activeLink(['welcome']) @endphp"><a href="{{ route('cms.welcome.index') }}">Welcome Note</a></li>
                @endif

{{--                @if(permission('*.services.*'))--}}
{{--                  <li class="@php activeLink(['services']) @endphp"><a href="{{route('cms.services.index')}}">Our Services</a></li>--}}
{{--                @endif --}}
                @if(permission('*.campuses.*'))
                  <li class="@php activeLink(['campuses']) @endphp"><a href="{{route('cms.campuses.index')}}">Campuses</a></li>
                @endif 
                @if(permission('*.short_courses.*'))
                  <li class="@php activeLink(['short_courses']) @endphp"><a href="{{route('cms.short_courses.index')}}">Short Courses</a></li>
                @endif 
                @if(permission('*.long_courses.*'))
                  <li class="@php activeLink(['long_courses']) @endphp"><a href="{{route('cms.long_courses.index')}}">Long Courses</a></li>
                @endif 
                @if(permission('*.quotations.*'))
                <li class="@php activeLink(['quotations']) @endphp"><a href="{{route('cms.quotations.index')}}">Testmonials</a></li>
                @endif 

                @if(permission('*.partners.*'))
                <li class="@php activeLink(['partners']) @endphp"><a href="{{route('cms.partners.index')}}">Partners</a></li>
                @endif 

                @if(permission('*.announcements.*'))
                  <li class="@php activeLink(['announcements']) @endphp"><a href="{{route('cms.announcements.index')}}">Announcements</a></li>
                @endif 

                @if(permission('*.press_releases.*'))
                  <li class="@php activeLink(['press_releases']) @endphp"><a href="{{route('cms.press_releases.index')}}">Press Releases</a></li>
                @endif

                @if(permission('*.speeches.*'))
                  <li class="@php activeLink(['speeches']) @endphp"><a href="{{route('cms.speeches.index')}}">Speeches</a></li>
                @endif

                @if(permission('*.howdois.*'))
                  {{-- <li class="@php activeLink(['howdois']) @endphp"><a href="{{ url('cms/howdois') }}">How Do I?</a>  </li> --}}
                @endif

                @if(permission('*.passengers.*'))
                  {{-- <li class="@php activeLink(['passengers']) @endphp"><a href="{{ url('cms/passengers') }}">Passengers Information</a>  </li> --}}
                @endif

                @if(permission('*.faqs.*'))
                  <li class="@php activeLink(['faqs']) @endphp"><a href="{{url('/cms/faqs')}}"> FAQs</a></li>
                @endif

            </ul>
        </li>
    @endif

    {{-- @if(permission(['*.online_services.*','*.passengers.*','*.howdois.*']))
    <li data-username="online services passengers information corner how do i"
        class="nav-item ega-hasmenu @php activeLink(['online_services','passengers','howdois']) @endphp">
        <a href="javascript:" class="nav-link">
          <span class="ega-micon"><i class="fa fa-cart-plus"></i></span><span class="ega-mtext">{{label('lbl_site_title_short')}} Details</span></a>
        <ul class="ega-submenu">

          @if(permission('*.online_services.*'))
            <li class="@php activeLink(['online_services']) @endphp"><a href="{{ url('cms/online_services') }}">Online Services</a>  </li>
          @endif
          
        </ul>
    </li>
    @endif --}}
    
    @if(permission(['*.online_services.*','*.customer_centers.*','*.staffemail.*','*.important_links.*', '*.quick_links.*', '*.related_links.*','*.external_links.*','*.sponsors.*','*.social_links.*']))
    <li data-username="online services customer centers important related links quick social sponsors staff email"
        class="nav-item ega-hasmenu @php activeLink(['online_services','customer_centers','sponsors','staffemail','external_links','social_links','quick_links','related_links','important_links']) @endphp">
        <a href="javascript:" class="nav-link">
          <span class="ega-micon"><i class="feather icon-link"></i></span><span class="ega-mtext">Links</span></a>
        <ul class="ega-submenu">
          @if(permission('*.related_links.*'))
            <li class="@php activeLink(['related_links']) @endphp"><a href="{{ url('cms/related_links') }}">Related Links</a>  </li>
          @endif

          @if(permission('*.important_links.*'))
            <li class="@php activeLink(['important_links']) @endphp"><a href="{{ url('cms/important_links') }}">Important Links</a>  </li>
          @endif

          @if(permission('*.quick_links.*'))
            <li class="@php activeLink(['quick_links']) @endphp"><a href="{{ url('cms/quick_links') }}">Quick Links</a> </li>
          @endif

          {{-- @if(permission('*.quick_links.*'))
            <li class="@php activeLink(['quicklink-categories','quicklinks']) @endphp"><a href="{{ url('/cms/quicklink-categories') }}">Quick Links</a> </li>
          @endif --}}

          @if(permission('*.social_links.*'))
            <li class="@php activeLink(['social_links']) @endphp"><a href="{{ url('cms/social_links') }}">Social Links</a>  </li>
          @endif

          {{-- @if(permission('*.sponsors.*'))
            <li class="@php activeLink(['sponsors']) @endphp"><a href="{{ url('cms/sponsors') }}">Our Parteners</a>  </li>
          @endif --}}

          {{-- @if(permission('*.customer_centers.*'))
            <li class="@php activeLink(['customer_centers']) @endphp"><a href="{{ url('cms/customer_centers') }}">Customer Center</a>  </li>
          @endif --}}

          @if(permission('*.online_services.*'))
            <li class="@php activeLink(['online_services']) @endphp"><a href="{{ url('cms/online_services') }}">Online Services</a>  </li>
          @endif

        </ul>
    </li>
    @endif


    @if(permission(['*.organogram.*','*.administration.*','*.administration_categories.*','*.administration_categories_members.*']))
    <li data-username="organogram administration management members" class="nav-item ega-hasmenu @php activeLink(['organogram','administration','administration_categories','administration_categories_members']) @endphp">
        <a href="javascript:" class="nav-link ">
          <span class="ega-micon"><i class="feather icon-users"></i></span>
          <span class="ega-mtext"> Administration</span>
        </a>
        <ul class="ega-submenu">

          {{-- @if(permission('*.organogram.*'))
          <li class="@php activeLink(['organogram']) @endphp"><a href="{{ url('cms/organogram') }}"> Organogram</a></li>
          @endif --}}
          
          @if(permission('*.administration.*'))
          <li class="@php activeLink(['administration']) @endphp"><a href="{{ url('cms/administration') }}">Administration Members</a></li>
          @endif

          @if(permission('*.administration_categories.*'))
          <li class="@php activeLink(['administration_categories']) @endphp"><a href="{{ url('cms/administration_categories') }}"> Administration Categories</a></li>
          @endif

        </ul>
    </li>
    @endif    
     
    @if(permission(['*.program_categories.*','*.program_level.*','*.programs.*','*.departments.*']))
    <li data-username="program categories level departments" class="nav-item ega-hasmenu @php activeLink(['program_categories','program_level','programs','departments']) @endphp">
        <a href="javascript:" class="nav-link ">
          <span class="ega-micon"><i class="feather icon-book-open"></i></span>
          <span class="ega-mtext"> Programme</span>
        </a>
        <ul class="ega-submenu">

          @if(permission('*.program_categories.*'))
          <li class="@php activeLink(['program_categories']) @endphp"><a href="{{ url('cms/program_categories') }}">Programme Category</a></li>
          @endif

          @if(permission('*.program_level.*'))
          <li class="@php activeLink(['program_level']) @endphp"><a href="{{ url('cms/program_level') }}"> Programme Level</a></li>
          @endif

          @if(permission('*.departments.*'))
          <li class="@php activeLink(['departments']) @endphp"><a href="{{ url('cms/departments') }}"> Departments</a></li>
          @endif

          @if(permission('*.programs.*'))
          <li class="@php activeLink(['programs']) @endphp"><a href="{{ url('cms/programs') }}"> Programmes</a></li>
          @endif

        </ul>
    </li>
    @endif    

    @if(permission('*.documents.*','*.document-categories.*'))
    <li data-username="documents" class="nav-item @php activeLink(['document-categories','documents']) @endphp">
        <a href="{{ url('/cms/document-categories') }}" class="nav-link">
          <span class="ega-micon"><i class="feather icon-file"></i></span>
          <span class="ega-mtext">Publications</span>
        </a>
    </li>
    @endif


    @if(permission(['*.pages.*']))
     <li data-username="pages" class="nav-item @php activeLink(['pages']) @endphp">
         <a href="{{ url('cms/pages') }}" class="nav-link">
           <span class="ega-micon"><i class="feather icon-file-text"></i></span>
           <span class="ega-mtext">Pages</span>
         </a>
     </li>
     @endif


    @if(permission('*.menu.*'))
      <li class="nav-item ega-menu-caption">
          <label>Customization</label>
      </li>
    @endif

    @if(permission('*.menu.*'))
      <li data-username="menu" class="nav-item @php activeLink(['menu','menu-items']) @endphp">
          <a href="{{ url('cms/menu') }}" class="nav-link">
            <span class="ega-micon"><i class="feather icon-menu"></i></span>
            <span class="ega-mtext">Menu</span>
          </a>
      </li>
    @endif


     @if(permission('*.menu.*'))
      <li class="nav-item ega-menu-caption">
          <label>User Feedback</label>
      </li>
    @endif

    @if(permission('*.complaints.*'))
      <li data-username="feedback complaints" class="nav-item @php activeLink(['feedback','complaints']) @endphp">
          <a href="{{ url('cms/complaints') }}" class="nav-link">
            <span class="ega-micon"><i class="feather icon-mail"></i></span>
            <span class="ega-mtext">Feedback</span>
          </a>
      </li>
    @endif

    @if(permission(['*.googlemaps.*','*.seo.*','*.users.*','*.roles.*','*.translations.*']))
      <li class="nav-item ega-menu-caption">
          <label>Settings</label>
      </li>
    @endif

    @if(permission('*.translations.*'))
      <li data-username="translation languages" class="nav-item @php activeLink(['translations']) @endphp">
          <a href="{{ url('cms/translations') }}" class="nav-link">
            <span class="ega-micon"><i class="feather icon-file-text"></i></span>
            <span class="ega-mtext">Translations</span>
          </a>
      </li>
    @endif

    @if(permission(['*.regional_office.*','*.googlemaps.*','*.seo.*']))
      <li data-username="regional office google map seo contacts site settings" class="nav-item ega-hasmenu @php activeLink(['regional_office','seo','googlemaps']) @endphp">
        <a href="javascript:" class="nav-link ">
          <span class="ega-micon"><i class="feather icon-settings"></i></span><span class="ega-mtext">Site Settings</span></a>
        <ul class="ega-submenu">

          @if(permission('*.regional_office.*'))
            <li class="@php activeLink(['regional_office']) @endphp"><a href="{{ url('cms/regional_office')}}">Contacts Us Details</a></li>
          @endif

          @if(permission('*.googlemaps.*'))
            <li class="@php activeLink(['googlemaps']) @endphp"><a href="{{ url('cms/googlemaps')}}">Google Map</a> </li>
          @endif

          @if(permission('*.seo.*'))
            <li class="@php activeLink(['seo']) @endphp"><a href="{{ url('cms/seo')}}">SEO</a></li>
          @endif

        </ul>
    </li>
    @endif

    @if(permission(['*.users.*','*.roles.*']))
      <li data-username="role users administration" class="nav-item ega-hasmenu @php activeLink(['user-registration-form','roles']) @endphp">
        <a href="javascript:" class="nav-link ">
          <span class="ega-micon"><i class="feather icon-users"></i></span><span class="ega-mtext">CMS Administrations</span></a>
        <ul class="ega-submenu">
          @if(permission('*.users.*'))
            <li><a href="{{route('cms.users.create-user-form')}}">Users</a></li>
          @endif

          @if(permission('*.roles.*'))
            <li class="@php activeLink(['roles']) @endphp"><a href="{{url('cms/roles')}}">Roles</a></li>
          @endif

          @if(permission('*.logs.*'))
            <li><a href="{{url('cms/logs')}}">Logs</a></li>
          @endif

        </ul>
    </li>
    @endif

</ul>

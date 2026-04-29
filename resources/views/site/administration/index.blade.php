@extends('site.inner')

@section('title')
  {!! $category->title !!}
@endsection

@section('breadcrumb')
    {{ breadcrumb() }}
@endsection

@section('page_title')
    {!! $category->title !!}
@endsection

@section('page_content')

<div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">
  <div class="col-12 px-0 px-xl-5">

    <div class="row mx-0">
      <div class="col-lg-12 px-0 my-2 page-content">

        <div class="row mx-0">
          <div class="col-12 px-0">
            @if($category->summary)
            <div style="background: #f8f9fa; border-radius: 12px; padding: 20px 25px; border-left: 4px solid #149246; margin-bottom: 25px;">
              <p class="mb-0" style="font-size: 15px; line-height: 1.7; color: #555;">{!! nl2br($category->summary) !!}</p>
            </div>
            @endif
            <div ng-app="profile" ng-controller="profileController" class="col-12 px-0">

              @if(count($members))
                  @foreach ($members as $group)

                    <div class="row mx-0 my-3 justify-content-center">
                      @foreach ($group as $member)
                        
                        <div class="col-12 col-sm-6 col-md-3 text-center py-3">
                            <a title="{{ label('lbl_view').' '.label('lbl_biography') }}" class="d-block" 
                            ng-click="showModal({{$category }},{{$member }})" style="cursor: pointer; text-decoration: none;"> 
                                <div style="background: #fff; border-radius: 12px; overflow: hidden; border: 1px solid #eee; box-shadow: 0 2px 10px rgba(0,0,0,0.06); transition: transform 0.3s, box-shadow 0.3s;" onmouseover="this.style.transform='translateY(-5px)'; this.style.boxShadow='0 8px 25px rgba(0,0,0,0.12)';" onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 2px 10px rgba(0,0,0,0.06)';">
                                  <div style="width: 130px; height: 130px; border-radius: 50%; overflow: hidden; border: 3px solid #149246; margin: 20px auto 0; box-shadow: 0 3px 10px rgba(20,146,70,0.15);">
                                    <img src="{{ asset('uploads/administration/'.$member->member->photo_url) }}" alt="{{ $member->member->fullname.' photo' }}" style="width: 100%; height: 100%; object-fit: cover;">
                                  </div>
                                  <div style="padding: 15px 12px 18px;">
                                    <h6 style="font-weight: 700; color: #2156a7; margin-bottom: 4px; font-size: 14px;">{!! $member->member->salutation.' '.$member->member->fullname !!}</h6> 
                                    <p style="color: #149246; font-weight: 600; font-size: 12px; margin: 0;">{!! $member->title !!}</p>
                                  </div>
                                </div>
                            </a>
                        </div>

                      @endforeach
                    </div>

                  @endforeach
              @else
                <div class="col-12 px-0 py-3 bold-600">
                  {{label('lbl_no_information')}}
                </div>
              @endif

            </div>
          </div>          
        </div>

      </div>
      
    </div>
    
  </div>
</div>
@include('site.includes.modals.profile_modal')
@stop

@section('js-content')
 <script> 
        var app = angular.module('profile', []);
            app.controller('profileController', function($scope, $http) {
            $scope.showModal = function($category,$member){
              $http.get($category.slug + "/" + $member.member.slug)
                .then(function (response) {

                    var $content = response.data
                    $(".profile-context").empty()
                    $(".profile-context").append($content)
                    $(".profile-modal").modal("show")
                });
            }
            
        });
  </script>
@endsection
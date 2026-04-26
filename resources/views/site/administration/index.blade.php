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
            <div class="pb-3 rich-text">
              {!! nl2br($category->summary) !!}
            </div>
            <div ng-app="profile" ng-controller="profileController" class="col-12 px-0">

              @if(count($members))
                  @foreach ($members as $group)

                    <div class="row mx-0 my-3 justify-content-center border-bottom">
                      @foreach ($group as $member)
                        
                        <div  class="col-12 col-sm-6 col-md-3 text-center py-3">
                            <a  title="{{ label('lbl_view').' '.label('lbl_biography') }}" class="d-block w-100 border members-link-hover" 
                            ng-click="showModal({{$category }},{{$member }})" style="cursor: pointer;"> 
                                <div class="text-center">
                                  <img src="{{asset('uploads/administration/'.$member->member->photo_url)}}" alt="{{$member->member->fullname.' photo'}}"
                                    class="img-fluid" style="width:100%; max-width:200px">
                                </div>                
                                <div class="py-2 border-top">
                                  <h6 class="text-bold text-primary">{!! $member->member->salutation.' '.$member->member->fullname !!}</h6> 
                                  <p class="text-faded mb-1 bold-600">{!! $member->title !!}</p>
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
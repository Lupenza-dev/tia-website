<style>
    .hover-bg:hover{
        background:#2156a7 !important;
        color: white;
        border-color:#2156a7!important;
        transition-duration: 0.2s;
    }
</style>
<div class="col-lg-4 mt-md-2 mt-lg-0  order-1 order-lg-0  has-parts px-0 ">
    <div class="bg-primaryyy home-side h-100 border-bottom-primary">
        <div class="d-md-flex d-lg-block align-items-center pt-3">
            <div class="col px-5">
                <div class="card-image-square border rounded-medium box-shadow">
                    <img src="{{ asset('uploads/administration/' . $dg->photo_url) }}"
                        alt="{{ $dg->title }}" class="w-100">
                </div>
            </div>
            <div ng-app="profile" ng-controller="profileController" class="col text-center  text-md-left text-lg-center ">
                <h5 class="text-bold my-2"> {{ $dg->salutation }} {{ $dg->fullname }} </h5>
                <h6> {!! $dg->title !!} </h6>
                <div class="d-flex d-md-block d-lg-flex py-2">
                    <div class="part-leftttt col my-md-2 my-lg-0">
                            <a href="{{ url('administration/members/'.$dg->slug.'/1') }}"
                            class="btn hover-bg text-whiteee border-dark  rounded ">
                            {{ label('lbl_biography') }} </a>
                    </div>
                    <span class="part-centerrrr col-1 d-md-none d-lg-inline text-faded">
                        <div>|</div>
                    </span>
                    <div class="part-rightttt col my-md-2 my-lg-0">
                        <a href="{{ url('welcome') }}"
                            class="btn hover-bg text-whiteee border-dark  rounded ">
                            {{ label('lbl_welcome_note') }} </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@section('js-content')
 <script> 

        var app = angular.module('profile', []);
            app.controller('profileController', function($scope, $http) {
            $scope.showModal = function($data){
                $http.get("administration/members/" + $data.slug)
                .then(function (response) {
                    var $content = response.data
                    $(".profile-context").empty()
                    $(".profile-context").append($content)
                    $(".profile-modal").modal("show")
                    console.log(response.data)
                });
            }
            
        });
  </script>
@endsection

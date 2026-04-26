<div class="modal-content " >
  <div class="modal-header bg-primary">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title"></h4>
  </div>
  <div class="modal-body">
    <div class="about-page main-container container-fluid p-3 p-lg-5 bg-white">              
          <div class="col-12">
              <div class="row">
                  <div class="col-lg-12 page-content my-2 pr-lg-5" data-aos="fade-up">
  
                      <div class="row pr-lg-4">
                           
                          <div class="col-12 px-0">
                              <div class="col-12 px-0">
                                  <div class="d-sm-flex">
                                      <div class="my-auto mr-3 pb-3 pb-sm-0">
                                          <div class="p-3 text-center">
                                            <img class="align-self-center img-fluid mr-3" 
                                            style="max-height: 200px !important;"
                                            src="{{  url('/uploads/administration/'.$member->photo_url) }}" 
                                            alt="{!! $member->fullname !!} photo">
                                          </div>
                                      </div>
                                      <div class="my-auto text-center text-lg-left">
                                          <div class="pb-2">
                                              <h3 class="text-bold"> {{ $member->salutation.' '.$member->fullname }}</h3>
                                          </div>
                                          <div class="pb-2">
                                            <span class="font-weight-bold">{{ label('lbl_email') }}:</span> 
                                            <a title="Send Email" href="mailto:{{$member->email}}">{{ $member->email }}</a>
                                          </div>
                                          <div>
                                            <span class="font-weight-bold">{{ label('lbl_phone') }}:</span> 
                                            <a title="Call" href="tel:{{$member->phone}}">{{ $member->phone }}</a>
                                          </div>
                                      </div>
                                  </div>                                  
                              </div>
                              <div class="col-12 px-0 mt-3 py-3">
                                  {{-- <h5 class="text-primary bold-600">Biography</h5> --}}
                                  <div class="rich-text py-2">
                                      @if(!empty($member->content))
                                      <div class="col-12 px-0 mt-3">
                                          <div>
                                              <h5 class="other-heading">{{label('lbl_biography')}} </h5>
                                          </div>
                                          <div class="rich-text">
                                              {!! $member->content !!}
                                          </div>
                                      </div>
                                    @endif
                                  </div> 
                              </div>
                                                          
                          </div>
                                                  
                      </div>
  
                  </div>
              </div>
          </div>
  
  
  </div>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
  </div>
</div>
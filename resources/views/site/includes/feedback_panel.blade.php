<!-- Off-canvas Feedback Panel -->
<div class="layout-overlay" id="feedbackOverlay"></div>
<div class="layout-offcanvas" id="feedbackOffcanvas">
  <div class="layout-offcanvas-header" style="background:#2156a7; border:none;">
    <h5 class="mb-0" style="color:#fff;"><i class="fa fa-comment mr-2"></i> {{ label('lbl_feedbacks') }}</h5>
    <button type="button" class="layout-close-btn" id="feedbackClose" aria-label="Close" style="color:#fff;">
      <i class="fa fa-times"></i>
    </button>
  </div>
  <div class="layout-offcanvas-body">
    <p class="text-muted mb-3" style="font-size:0.88rem;">{{ label('lbl_feedback') }}</p>
    @if(!empty($seo->recaptcha_site_key) && !empty($seo->recaptcha_secret_key))
    <form method="POST" action="{{ url('complaints') }}" accept-charset="UTF-8">
      {{ csrf_field() }}
      <div class="form-group">
        <input name="first_name" type="text" class="form-control rounded py-3" placeholder="{{ label('lbl_fullname') }}" autocomplete="off" required>
      </div>
      <div class="form-group">
        <input name="email" type="email" class="form-control rounded py-3" placeholder="{{ label('lbl_email') }}" autocomplete="off" required>
      </div>
      <div class="form-group">
        <textarea name="message" class="form-control rounded py-2" placeholder="{{ label('lbl_message') }}" style="resize:none; min-height:100px;" autocomplete="off" required></textarea>
      </div>
      <div class="form-group position-relative" style="overflow:hidden">
        <div class="g-recaptcha" data-sitekey="{{ $seo->recaptcha_site_key }}"></div>
      </div>
      <button type="submit" class="btn btn-primary rounded btn-block">
        <span>{{ label('lbl_submit') }}</span> <span class="fa pl-2 fa-arrow-right"></span>
      </button>
    </form>
    @endif
  </div>
</div>

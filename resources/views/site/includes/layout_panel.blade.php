<!-- Off-canvas Layout Panel -->
<div class="layout-overlay" id="layoutOverlay"></div>
<div class="layout-offcanvas" id="layoutOffcanvas">
  <div class="layout-offcanvas-header">
    <h5 class="mb-0"><i class="fa fa-sliders-h mr-2"></i> Settings</h5>
    <button type="button" class="layout-close-btn" id="layoutClose" aria-label="Close">
      <i class="fa fa-times"></i>
    </button>
  </div>

  <div class="layout-offcanvas-body">

    {{-- Language --}}
    <div class="layout-section">
      <div class="layout-section-title"><i class="fa fa-globe mr-2"></i> Language</div>
      <div class="layout-option-group">
        <a href="{{ url('language/en') }}"
           class="layout-option-btn {{ curlang() == '_en' ? 'active-option' : '' }}">
          <i class="fa fa-font mr-1"></i> English
        </a>
        <a href="{{ url('language/sw') }}"
           class="layout-option-btn {{ curlang() == '_sw' ? 'active-option' : '' }}">
          <i class="fa fa-font mr-1"></i> Kiswahili
        </a>
      </div>
    </div>

    {{-- Appearance --}}
    <div class="layout-section">
      <div class="layout-section-title"><i class="fa fa-palette mr-2"></i> Appearance</div>
      <div class="layout-option-group">
        <button class="layout-option-btn active-option" data-theme="light">
          <i class="fa fa-sun mr-1"></i> Light
        </button>
        <button class="layout-option-btn" data-theme="dark">
          <i class="fa fa-moon mr-1"></i> Dark
        </button>
      </div>
      {{-- <div class="layout-sub-label mt-3">Primary Colour</div>
      <div class="layout-color-row">
        <button class="layout-color-swatch active-swatch" data-primary="#2156a7" style="background:#2156a7" title="Blue"></button>
        <button class="layout-color-swatch" data-primary="#149246" style="background:#149246" title="Green"></button>
        <button class="layout-color-swatch" data-primary="#e8a317" style="background:#e8a317" title="Gold"></button>
        <button class="layout-color-swatch" data-primary="#c0392b" style="background:#c0392b" title="Red"></button>
        <button class="layout-color-swatch" data-primary="#8e44ad" style="background:#8e44ad" title="Purple"></button>
        <button class="layout-color-swatch" data-primary="#2c3e50" style="background:#2c3e50" title="Navy"></button>
      </div> --}}
    </div>

    {{-- Font Size --}}
    <div class="layout-section">
      <div class="layout-section-title"><i class="fa fa-text-height mr-2"></i> Text Size</div>
      <div class="layout-option-group">
        <button class="layout-option-btn" data-fontsize="small">
          <span style="font-size:0.78rem">A</span>&nbsp; Small
        </button>
        <button class="layout-option-btn active-option" data-fontsize="medium">
          <span style="font-size:1rem">A</span>&nbsp; Default
        </button>
        <button class="layout-option-btn" data-fontsize="large">
          <span style="font-size:1.25rem">A</span>&nbsp; Large
        </button>
      </div>
    </div>

  </div>
</div>

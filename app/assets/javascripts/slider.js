(function(core, $){
    'use strict';
    core.modules.slider = {
        'defaults': {
            'sliderSelector': '.owl-carousel'
        },
        'init': function(){
            var modSlider = this;
            var options = core.options.slider || {};
            this.settings = $.extend({}, this.defaults, options);
            var settings = this.settings;
            this.$instance = $(settings.sliderSelector);
            var $instance = this.$instance;

            $(settings.sliderSelector).owlCarousel({
                slideSpeed : 1000,
                paginationSpeed : 1000,
                singleItem: true,
                autoPlay: 4000,
                rewindSpeed: 2000
            });
        }
    }
})(core, jQuery);

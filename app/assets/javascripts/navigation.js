(function(core, $){
    'use strict';
    core.modules.navigation = {
        'defaults': {
            'headerSelector': 'header',
            'navSelector': 'header nav',
            'navShowClass': 'show'
        },
        'init': function(){
            var modNavigation = this;
            var options = core.options.navigation || {};
            this.settings = $.extend({}, this.defaults, options);
            var settings = this.settings;
            this.$instance = $(settings.navSelector);
            var $instance = this.$instance;
            $instance.prepend('<button class="menu-button">Menu</button>');

            $instance.on('click', 'button', function(e){
                var modNavigation = core.modules.navigation;
                var $instance = modNavigation.$instance;
                var $this = $(this);
                modNavigation.toggleMenu();
            });
        },
        'toggleMenu': function(){
            var modNavigation = core.modules.navigation;
            modNavigation.$instance.toggleClass(modNavigation.settings.navShowClass);
        }
    }
})(core, jQuery);

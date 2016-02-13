var core = core || {'modules': {}};

(function(core, $){
    'use strict';
    $(document).ready(function(){
        for(var mod in core.modules) {
            if(core.modules.hasOwnProperty(mod))
            {
                var module = core.modules[mod];
                if(module.init)
                {
                    module.init();
                }
            }
        }
    });
})(core, jQuery);
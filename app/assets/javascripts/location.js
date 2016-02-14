(function(core, $){
    'use strict';
    core.modules.locationFilter = {
        'defaults': {
            'locationFilterSelector': 'fieldset',
            'inputSelector': 'input[type="radio"]',
            'labelSelector': 'legend',
            'optionSelector': 'label'
        },
        'init': function(){
            var modlocationFilter = this;
            var options = core.options.locationFilter || {};
            this.settings = $.extend({}, this.defaults, options);
            var settings = this.settings;
            this.$instances = $(settings.locationFilterSelector);
            var $instances = this.$instances;
            $instances.each(function(i, el){
                var $instance = $(el);
                var $legend = $instance.find(settings.labelSelector);
                var $id = $instance.find(settings.inputSelector).attr('id');
                var $label = $('<label for="location-filters-options">' + $legend.html() + '</label>');
                var $button = $('<button onclick="location = ' + $id + '>Update<span class="access"> filter</span></button>');
                var $select = $('<select id="location-filters-options">');

                $instance.find(settings.inputSelector).each(function(j, el){
                    var $el = $(el);
                    var $option = $('<option>');
                    $option.attr('value', $el.attr('value'));
                    $option.html($el.next('label').html());
                    $select.append($option);
                });
                //$select.append($button);
                $instance.find(settings.labelSelector).replaceWith($label);
                console.log(settings.locationFilterSelector);
                $instance.find(settings.locationFilterSelector).replaceWith($select);
                $instance.find('select').after($button);
            });
        }
    };
})(core, jQuery);
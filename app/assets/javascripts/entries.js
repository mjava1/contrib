/**
 * Created with JetBrains RubyMine.
 * User: javed
 * Date: 11/02/2013
 * Time: 13:45
 * To change this template use File | Settings | File Templates.
 */


$(document).ready(function() {

    $('#shareme').sharrre({
        share: {
            googlePlus: true,
            facebook: true,
            twitter: true,
            pinterest: true
        },
        buttons: {
            googlePlus: {size: 'tall'},
            facebook: {layout: 'box_count'},
            twitter: {count: 'vertical'},
            digg: {type: 'DiggMedium'},
            delicious: {size: 'tall'},
            stumbleupon: {layout: '5'},
            linkedin: {counter: 'top'},
            pinterest: { description: $('#shareme').data('text'), layout: 'vertical'}
        },
        enableHover: false,
        enableCounter: false,
        enableTracking: true
    });



});

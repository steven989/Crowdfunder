// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require_tree .
//= require cocoon
//= require turbolinks


$(document).ready(function(){

    $(window).on('scroll', function(){

        if ($(window).scrollTop() >= $(document).height() - $(window).height() - 50 && $('.pagination .next a').attr('href')) {

            $.ajax({
                url: $('.pagination .next a').attr('href')+'&category='+$('.category_select').val()+'&scroll=true',
                type: 'GET',
                dataType: 'script'
            });

            $('.pagination').html('<p>Waiting for a response</p>')

        }


    });


    $('.category_select').on('change',function(){

        $.ajax({
            url: '/?category='+$(this).val(),
            type: 'GET',
            dataType: 'script'
        });

    });


});
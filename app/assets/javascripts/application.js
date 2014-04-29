// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//= require jquery
//= require twitter/bootstrap
//= require jquery_ujs
//= require skrollr
//= require skrollr
//= require skrollr.ie
//= require_tree .

$(function() {

  $(".alert").delay(1500).fadeOut(1000);

  $("#searchfarm").click(function() {
    $("html, body").animate({ scrollTop: $(document).height() }, "slow");
    return false;

  $("button").click(function () {
    $(this).toggleClass("active");
});

  });

} );

$(document).ready(function(){
    $(".trigger").click(function(){
        $(".panel").toggle("fast");
     $(this).toggleClass("active");
        return false;
    });
});

$(document).ready(function(){
  $(".feature-panel").hide()
    $(".feature-trigger").click(function(){
        $(".feature-panel").toggle("fast");
     $(this).toggleClass(".feature-panel");
        return false;
    });
});

$(document).ready(function(){
  $("#static-image").hide();
    $("#static-image").fadeIn(2000);
  });


$(document).ready(function(){
    $("a[rel=tooltip]").tooltip({
      'delay': { show: 900, hide: 300 }
    });
});


$(document).ready(function(){
    $("#new_q > label:nth-child(2)").tooltip({
      'delay': { show: 900, hide: 300 }
    });
});

$(document).ready(function(){
    $("div.span2:nth-child(3) > label:nth-child(1)").tooltip({
       'delay': { show: 900, hide: 300 }
    });
});

$(document).ready(function(){
    $(".searchbar > label:nth-child(1)").tooltip({
       'delay': { show: 900, hide: 300 }
    });
});
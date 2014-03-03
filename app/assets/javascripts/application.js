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
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl
//= require jquery.ui.all
//= require_tree .

function renderProgressBars() {
  $(".progress").progressbar({
    value: 0
  });
  $("input[name='kluster[kluster_documents_attributes][0][document]']").css('visibility','hidden');
}

function completeProgressBars() {
  $(".progress").progressbar({
    value: 100
  });
  $(".upload").css('visibility','hidden');
  $(".progress").css('visibility','hidden');
}

$(function(){ $(document).foundation(); });

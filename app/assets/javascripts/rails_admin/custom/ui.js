//= require select2

$(document).ready(function() {
  //$('select').select2();

  //var $eventSelect = $(#patient_diagnostic_select");
  //$eventSelect.on("select2:select", function (e) {
  //  $("#patient_diagnostic_select").val()
  //});
  //$eventSelect.on("select2:unselect", function (e) { debugger; log("select2:select", e); });
  //$('.patient-diagnostics').select2({
  //  placeholder: "Способи лiкування"
  //});
  //$('.diagnostics').select2({
  //  placeholder: "Хвороба"
  //});
});


$(document).on('ready pjax:success', function() {
  handleActiveBase();
  function handleActiveBase() {
    $('.sub-menu').each(function () {
      if ($(this).hasClass('active')) {
        $(this).parent().prev().addClass('active');
        $(this).parent().prev().addClass('open');
        $(this).parent().slideDown();
      }
    });
  }
});

$(function () {
  var width = $('.nav-stacked').width();
  $('.navbar-header').width(width);

  var array_menu = [];
  var lvl_1 = null;
  var count = 0;

  $('.sidebar-nav li').each(function (index, item) {
    if ($(item).hasClass('dropdown-header')) {
      lvl_1 = count++;
      array_menu[lvl_1] = []
    } else {
      $(item).addClass('sub-menu sub-menu-' + lvl_1);
    }
  });

  for (var i = 0; i <= array_menu.length; i++) {
    $('.sub-menu-' + i).wrapAll("<div class='sub-menu-container' />");
  }

  $('.sub-menu-container').hide();

  handleActiveBase();
  function handleActiveBase() {
    $('.sub-menu').each(function () {
      if ($(this).hasClass('active')) {
        $(this).parent().prev().addClass('active');
        $(this).parent().slideDown();
      }
    });
  }

  $('.dropdown-header').bind('click', function () {
    $('.dropdown-header').removeClass('open');
    $(this).addClass('open');

    $('.dropdown-header').removeClass('active');
    $('.sub-menu-container').stop().slideUp();
    $(this).toggleClass('active');
    $(this).next('.sub-menu-container').stop().slideDown();
  });
});

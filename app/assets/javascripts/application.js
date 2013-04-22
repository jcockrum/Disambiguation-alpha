// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//////////////////////////////////////////////////////////////////////////////////////////////////////
// The jQuery UI code weighs 51KB (minified + gzipped) and takes a while to execute, so for production
// apps it's recommended to only include the modules that your application actually uses. Dependencies
// are automatically resolved. Simply pick one or more modules from the asset list below.
//// UI Core ////
//  require jquery.ui.core
//  require jquery.ui.widget
//  require jquery.ui.mouse
//  require jquery.ui.position
// You usually do not need to require these directly, as they are pulled in by the other JavaScript
// modules as needed.
//// Interactions ////
//  require jquery.ui.draggable
//  require jquery.ui.droppable
//  require jquery.ui.resizable
//  require jquery.ui.selectable
//  require jquery.ui.sortable
// For jquery.ui.resizable and jquery.ui.selectable, remember to require their matching CSS files
// in your application.css as well.
//// Widgets ////
// require jquery.ui.accordion
// require jquery.ui.autocomplete
// require jquery.ui.button
// require jquery.ui.datepicker
// require jquery.ui.dialog
// require jquery.ui.menu
// require jquery.ui.progressbar
// require jquery.ui.slider
// require jquery.ui.spinner
// require jquery.ui.tabs
// require jquery.ui.tooltip
// For all of these, remember to require their matching CSS files in your application.css as well.

// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.

//// Includes ////
//= require jquery
//= require jquery.ui.core
//= require jquery.ui.widget
//= require jquery.ui.mouse
//= require jquery.ui.position
//= require jquery_ujs
//= require best_in_place
//= require cocoon
//= addon
//= require_tree .

$(document).ready(function()
{
    /* Activating Best In Place */
    jQuery(".best_in_place").best_in_place();
    /* page custom */
    $('ul.sf-menu').superfish();
    $('#wrapper .border-top').pngie();
    $('#container .ft').pngie();
    $('#container .hd').pngie();
    $('#container .bd').pngie();
    $('#wrapper .overlay').pngie();
}); 
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  states = $('#city_state_id').html()
  $('#city_state_id').change ->
    country = $('#city_state_id :selected').text()
    options = $(states).filter("optgroup[label='#{country}']").html()
    if options
      $('#city_state_id').html(option)
    else
      $('#city_state_id').empty()

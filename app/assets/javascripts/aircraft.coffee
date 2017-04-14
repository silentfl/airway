$(window).load ->
  setInterval ->
    update_queue()
  , 1000

isEmptyString = (s) ->
  s.replace(/^\s+/, '') == ''

update_queue = ->
  $.get '/aircrafts/takeoff_queue', (data) ->
    $('.takeoff_queue').show() if !isEmptyString(data) && !$('takeoff_queue').is(':visible')
    $('.takeoff_queue').hide() if isEmptyString(data) || $('takeoff_queue').is(':visible')
    $('.queue').html data

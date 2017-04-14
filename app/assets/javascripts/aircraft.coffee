$(window).load ->
  setInterval ->
    update_queue()
  , 1000

update_queue = ->
  $.get '/aircrafts/takeoff_queue', (data) ->
    $('.takeoff_queue').show() if (!!data)
    $('.queue').html data

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: 

daily = {date: 0, user: 0, climb: 0, duolingo: 0, teeth: 0, mia: 0, run: 0, type: 0, pull: 0, floor: 0, bell: 0};



$(document).on 'ready page:change', -> 
  $("#submitDaily").click -> 
    console.log(daily)
 ###
  currentTime = new Date()
  #currentUser = Meteor.userId();
  daily.date = currentTime.toDateString()
  #daily.user = currentUser;

  if($("#climb-checkbox").is(':checked')){daily.climb = 1};
  if($("#duolingo-checkbox").is(':checked')){daily.duolingo = 1};
  if($("#teeth-checkbox1").is(':checked')){daily.teeth += 1};
  if($("#teeth-checkbox2").is(':checked')){daily.teeth += 1};
  if($("#teeth-checkbox3").is(':checked')){daily.teeth += 1};
  if($("#mia-skate-checkbox1").is(':checked')){daily.mia += 1};
  if($("#mia-skate-checkbox2").is(':checked')){daily.mia += 1};
  if($("#mia-skate-checkbox3").is(':checked')){daily.mia += 1};
  if($("#run-checkbox1").is(':checked')){daily.run += 1};
  if($("#run-checkbox2").is(':checked')){daily.run += 1};
  if($("#run-checkbox3").is(':checked')){daily.run += 1};
  if($("#type-checkbox1").is(':checked')){daily.type += 1};
  if($("#type-checkbox2").is(':checked')){daily.type += 1};
  if($("#type-checkbox3").is(':checked')){daily.type += 1};
  if($("#pull-sets-checkbox1").is(':checked')){daily.pull += 1};
  if($("#pull-sets-checkbox2").is(':checked')){daily.pull += 1};
  if($("#pull-sets-checkbox3").is(':checked')){daily.pull += 1};
  if($("#floor-sets-checkbox1").is(':checked')){daily.floor += 1};
  if($("#floor-sets-checkbox2").is(':checked')){daily.floor += 1};
  if($("#floor-sets-checkbox3").is(':checked')){daily.floor += 1};
  if($("#bell-sets-checkbox1").is(':checked')){daily.bell += 1};
  if($("#bell-sets-checkbox2").is(':checked')){daily.bell += 1};
  if($("#bell-sets-checkbox3").is(':checked')){daily.bell += 1};
  ###
 
  



window.climbConsole = () -> 
  console.log(daily)
  

$ -> console.log("Fuck yea Trip!")
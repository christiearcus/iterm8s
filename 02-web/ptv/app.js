console.log('welcome to ptv');


var getJourney = function(origin, destination) {

  var line = ['FlindersStreet', 'Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie'];

  var startStationIndex = line.indexOf(origin);
  var endStationIndex = line.indexOf(destination);
  
  return line.slice(startStationIndex, endStationIndex);
}


var originInput = document.getElementById('originInput');
var destInput = document.getElementById('destInput');
var goBtn = document.getElementById('goBtn');

goBtn.addEventListener('click', function() { 

  var origin = originInput.value;
  var destination = destInput.value;

  console.log( getJourney(origin, destination) );

})







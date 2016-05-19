// pink
// mistyrose
// tomato


// getIterm8sColors();

// ['pink','mistyrose','tomato']


// import a object with methods
var colorific = require('./myModule.js');

// import a function
var willItRain = require('./rain.js');

// import a object with method
var iterm8s = require('./iterm8s.js');


console.log(colorific.getSpecialColor());

// willItRain() // return 'yes'
// rain.js

console.log('will melbourne rain today ' + willItRain());


iterm8s.willPanic('LJ'); // return true or false

if (iterm8s.willPanic('Paul')) {
  console.log('dont panic');
}






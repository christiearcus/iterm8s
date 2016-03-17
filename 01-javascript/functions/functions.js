console.log('functions');


function makeCakePudding() {

  console.log('goto coles');
  console.log('buy cake');
  console.log('buy pudding');
  console.log('mix them together');

  return 'finished';

  console.log('this way never be displayed');
}

// parameter
function greeting(name) {
  // console.log('hello ' + name);

  return 'hello ' + name;
}

console.log( greeting('iterm8s') ); // passed in argument


function sayHello(firstname, lastname) {
  console.log('hello ' + firstname + ' ' + lastname);
}

sayHello('iter', 'm8s');

// global variable
// var magicalWaves


function microwaveIt(food) {
  var magicalWaves = "*-.-*-.-*";

  food = food.split('').join(magicalWaves);

  console.log('cooked food: ' + food);
}


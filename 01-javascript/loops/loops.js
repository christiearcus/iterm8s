console.log('loops');

var counter = 0;

// pre condition
while (counter <= 5) {
  console.log('the value of counter is ' + counter);
  counter++;
}

// post condition
var a = 0;
do {
  console.log(a);
  a = a + 1;
  // a++;
  // a+=2;
} while (a < 5)


var secretNumber = 42;

// get input from a user through a prompt
// if they get it wrong print out you fail life keep asking
// ad if they get right.

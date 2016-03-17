console.log('guessing game');

var secretNumber = 42;

// ask the user for a guess

var guess = Number( prompt('guess a number between 1 and 5') );

// if the guess is corrent
// else repeat

while (guess !== secretNumber) {
  console.log('you fail life');
  console.log('guess', guess);
  guess = Number( prompt('guess a number between 1 and 5') );
}
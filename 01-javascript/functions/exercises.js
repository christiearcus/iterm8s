// calculateAge

var calculateAge = function(birthYear, currentYear) {

  if (currentYear === undefined) {
    currentYear = new Date().getFullYear();
  }

  var age = currentYear - birthYear;
  var ageBeforeBirthday = age - 1;

  console.log('you are ' + age + ' or ' + ageBeforeBirthday);
}

// lifetime supply

var calculateSupply = function(age, amountPerDay) {
  var MAX_AGE = 92;

  var ammountConsumed = (MAX_AGE - age) * amountPerDay * 365.25;

  console.log('you will need ' + Math.round(ammountConsumed) + ' to last you till the ripe age of ' + MAX_AGE);
}

// circle

var calculateCircumference = function(radius) {
  var circumference = 2 * Math.PI * radius;
  console.log('the circumference is ' + circumference);
} 

var calculateArea = function(radius) {
  var area = Math.PI * radius * radius;
  console.log('the area is ' + area);
}

// lengths

var lengths = function(arrayOfWords) {
  var results = [];
  for (var index = 0; index < arrayOfWords.length; index++) {
    results.push( arrayOfWords[index].length    );
  }

  return results;
}

console.log( lengths(['one','two','three']) );

// transmogrifier

var transmogrifier = function(num1, num2, num3) {
  var product = num1 * num2;
  var transmogrified = Math.pow(product, num3);
  return transmogrified;
}

// wordReverse

// "friday is great"

var wordReverse = function(stringOfWords) {
  var arrayOfWords = stringOfWords.split(' ');
  var reversedArrayOfWords = arrayOfWords.reverse();
  var reverseStringOfWords = reversedArrayOfWords.join(' ');
  return reverseStringOfWords;
}
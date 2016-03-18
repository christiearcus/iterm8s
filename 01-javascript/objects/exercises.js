// recipe

var recipe = {
  title: 'surprise',
  servings: 1,
  ingredients: ['cheese','cotton candy','vegemite']
}

console.log(recipe.title);
console.log(recipe['servings']);
console.log(recipe.ingredients.join('\n'));

for (var i = 0; i < recipe.length; i++) {
  console.log(recipe.ingredients[i]);
}

// reading list 
// var andresBook = {
//   title: 'how to make a sandwich',
//   author: 'andre',
//   alreadyRead: false
// }


var books = [{
  title: 'how to make a sandwich',
  author: 'andre',
  alreadyRead: false
}, {
  title: 'girl with the dragon keyboard',
  author: 'lj',
  alreadyRead: true
}];

for (var i = 0; i < books.length; i++) {
  var book = book[i];

  var desc = book.title + ' by ' + book.author;

  if (book.alreadyRead) {
    console.log('you read ' + desc);
  } else {
    console.log('you need to read ' + desc);
  }
}

// movies

var sharknado = {
  title: 'sharknado',
  duration: 100,
  stars: ['the guy from 90210', 'sharks']
}

var movieInfo = function(movie) {
  var info = '';

  info += movie.title;
  info += ' lasts for ' + movie.duration + 'minutes.';
  into += ' stars: ' + movie.stars.join(', ');

  console.log(info);
}

movieInfo(sharknado);
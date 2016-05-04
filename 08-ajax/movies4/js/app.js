
var fetchMovies = function(event) {
  event.preventDefault();

  var searchTerm = $('#query').val();

  console.log(searchTerm);

  $.ajax({
    url: 'http://www.omdbapi.com/',
    data: { s: searchTerm }
  }).done(function(response) {
    
    response.Search.forEach(function(movie) {

      // make elements
      var templateString = $('#item-template').html();
      var templateFunction = Handlebars.compile(templateString);
      var html = templateFunction({ title: movie.Title, year: movie.Year });
      var $newElem = $('<div>').html(html);

      // put it back on the page
      $('.list').append( $newElem );
    });

  });


}

$('#search-form').on('submit', fetchMovies)
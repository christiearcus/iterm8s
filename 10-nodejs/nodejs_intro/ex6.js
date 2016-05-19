// make a get request to omdbapi 
// http://omdbapi.com/?t=jaws

// require 'httparty'
// res = HTTParty.get('http://omdbapi.com/?t=jaws')


// importing a object with methods to use
var http = require('http');

var url = 'http://www.reddit.com/.json';

// response object
var callback = function(response) {
  console.log('finish requesting omdbapi');
  response.setEncoding('utf-8');  

  response.on('data', function(data) {
    console.log(data); 
  });

  response.on('end', function(data) {
    console.log('all done');
  })

}

http.get(url, callback);


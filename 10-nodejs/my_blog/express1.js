var express = require('express');
var app = express();
var PORT = 4567;

// var app = require('express')();

app.get('/', function(request, response) {
  response.send('<h1>home</h1>');
});

app.get('/about', function(request, response) {
  response.send('hello world');
});


var server = require('http').createServer(app);
server.listen(PORT, function() {
  console.log('listening on port ' + PORT);
});



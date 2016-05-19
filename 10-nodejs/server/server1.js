var fs = require('fs');

var app = function(request, response) {
  console.log(request.url + ' ' + new Date());
  if (request.url === '/') {
    fs.readFile('./index.html', function(error, data) {
      response.writeHead(200, {'content-type': 'text/html'});
      response.write(data, 'utf8');
      response.end();
    });
  }

  if (request.url === '/donate') {
    console.log('thank you');
  }
}


// var http = require('http');
// var server = http.createServer()

var server = require('http').createServer(app);
server.listen(3000);
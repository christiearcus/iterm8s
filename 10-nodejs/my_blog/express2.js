var express = require('express');
var app = express();
 var PORT = process.env.PORT || 4567;

app.set('views', './views');
app.set('view engine', 'ejs');

var myLogger = function(req, res, next) {
  console.log('%s request %s from %s', req.method, req.path, req.ip);
  next();
}

app.use(myLogger);
app.use(express.static('public'));

var userRouter = require('./userRoutes.js');

app.use('/users', userRouter);

// app.get('/', function(request, response) {
//   response.render('index');
// });

// app.get('/about', function(request, response) {
//   response.render('about');
// });


var server = require('http').createServer(app);
server.listen(PORT, function() {
  console.log('listening on port ' + PORT);
});
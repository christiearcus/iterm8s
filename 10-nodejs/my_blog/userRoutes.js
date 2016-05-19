var express = require('express');
var userRouter = express.Router();

userRouter.get('/unhappy', function(request, response) {
  response.render('about');
});

userRouter.get('/happy', function(request, response) {
  response.render('about');
});


module.exports = userRouter;
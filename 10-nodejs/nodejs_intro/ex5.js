// reading files again
// but with callbacks

var fs = require('fs');

// fs.readFile(filename, fileEncoding, callback);

// callback signature 
fs.readFile('ex2.js', 'utf-8', function(err, data) { 
  console.log(data);
});



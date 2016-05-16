// ex4
// write a command line application to count lines of code in a file
// i will give you a hint

// commonjs, amd, es6

// node way of dealing with modules is based on commonjs

var fs = require('fs'); // return an object and I assigned to fs 

// fs.readFileSync()

var buffer = fs.readFileSync('ex2.js');
// console.log(buffer);

var str = buffer.toString();

numberOfLines = str.split("\n").length;

console.log(numberOfLines);


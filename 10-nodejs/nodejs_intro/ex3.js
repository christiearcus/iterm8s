// write a command line program that sums numbers

// user can pass in numbers through the command line like this:

// node ex3.js 3 2 1
// 6

// convert to number: Number() parseInt() unary +

var total = 0;

for (var index = 2; index< process.argv.length; index++) {
  total = total + Number(process.argv[index]);
}

console.log(total);
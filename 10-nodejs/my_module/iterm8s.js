// module iterm8s.js
// should export an object with a method willPanic

var iterm8s = {
  willPanic: function(student) {
    if (student === 'Paul') {
      return true;
    } else {
      return false;
    }
  }
}

// var iterm8s = {}

// iterm8s.willPanic = function(student) {
//   if (student === 'Paul') {
//     return true;
//   } else {
//     return false;
//   }
// }


module.exports = iterm8s
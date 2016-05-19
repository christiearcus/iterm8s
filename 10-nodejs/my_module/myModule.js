
var specialColor = 'plum';

var getIterm8sColors = function() {
  var colors = ['pink','mistyrose','tomato']; 
  colors.push(specialColor);
  return colors;
}

var getSpecialColor = function() {
  return specialColor + 'ming';
}

module.exports = {
  getIterm8sColors: getIterm8sColors,
  getSpecialColor: getSpecialColor
};



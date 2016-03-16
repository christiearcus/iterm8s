console.log('intro2');

if (5 > 4) {
  console.log('math is easy');
}

var iterm8sIsAwesome = false;

if (iterm8sIsAwesome === true) {
  console.log('yay iterm8s');
}
// truthy & falsey
if (iterm8sIsAwesome) {
  console.log('nothing to see here');
}

var points = 0;
if (points) {
  console.log('you have ' + points + ' points');
}
// the number 0 is falsey

var firstname = null;
if (firstname) {
  console.log('your firstname is ' + firstname);
}
// null is also falsey

var lastname = undefined;
if (lastname) {
  console.log('your lastname is ' + lastname);
}
// undefined is also falsey

var fullname = '';
if (fullname) {
  console.log('your fullname is ' + fullname);
}
// empty string is also falsey

var theYear = 2018;

if (theYear === 2016) {
  console.log("I'm present");
} else if (theYear > 2016) {
  console.log("whoa! I'm in the future");
} else {
  console.log('blast from the past');
}

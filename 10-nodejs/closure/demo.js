// var threeFunctions = [];

// for (var i=0; i<3; i++) {

//   var printIndex = function() {
//     console.log(i);
//   }

//   threeFunctions.push( printIndex );
// }

// in each of the function, the variable i is bound to the same variable outside the function


for(var num=0; num<3; num++) {

  $.ajax({ url: '/some_very_slow_endpoint' }).done(function() {
    console.log(num); // 155
  })

} 

num = 155;

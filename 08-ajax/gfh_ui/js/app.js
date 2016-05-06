
$.ajax({
  url: 'http://localhost:3000/api/dishes'
}).done(function(dishes) {

  _.each(dishes, function(dish) {
    
    var $newImage = $('<div>').addClass('image');
    var $newDesc = $('<div>').addClass('desc').html('<h2>' + dish.name +'</h2>');
    var $newLike = $('<div>').addClass('like');
    var $newItem = $('<div>').addClass('item');

    $newItem.append($newImage);
    $newItem.append($newDesc);
    $newItem.append($newLike);

    $('.list').append($newItem);
  });

});

$('.list').on('click', '.item', function() {
  console.log(this);
})
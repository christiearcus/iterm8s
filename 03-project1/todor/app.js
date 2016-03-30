console.log('todor');

var newTodoBtn = document.querySelector('#newTodoBtn');
var todoList = document.querySelector('#todos');

var addTodo = function(todoText) {
  
  var todoText = document.querySelector('#todoInput').value;
  var newTodoElem = document.createElement('li');


  // var textNode = document.createTextNode(todoText);
  // newTodoElem.appendChild(textNode);

  newTodoElem.innerHTML = todoText;

  // <li>win</li>
  // todoList.appendChild(newTodoElem);
  document.querySelector('#completed').appendChild(newTodoElem);
}

// addTodo('hello');

newTodoBtn.addEventListener('click', addTodo);

// listening on the parent - event delegation
todoList.addEventListener('click', function(event) {

  // only care if user clicked on LI
  if (event.target.tagName === 'LI') {


    var completedTodo = document.createElement('li');
    completedTodo.innerHTML = event.target.innerHTML;

    todoList.removeChild(event.target);

    var completedList = document.querySelector('#completed');
    completedList.appendChild(completedTodo)

    // if LI has no class set it to done
    // if (event.target.className === '') {
    //   event.target.className = 'done';
    // } else {
    //   event.target.className = '';
    // }

  }

})



var tasks = ['sleep','more sleep','even more sleep', 'yay'];



for (var i = 0; i< tasks.length; i++) {

  console.log(tasks[i]);
  var item = document.createElement('li');

  item.innerHTML = tasks[i];  

  todoList.appendChild(item);
}





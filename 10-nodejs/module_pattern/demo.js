// var account = 0; 

// var deposit = function(amount) {

// }

var account = {
  name: 'dt ga fund',
  balance: 0,
  deposit: function(amount) {
  },
  getBalance: function() {
    return account.balance;
  }
}

// module pattern

// a factory to make accounts
// protecting my private variables

var makeAccount = function() {

  var balance = 0;

  var publicAPI = {
    getBalance: function() {
      return balance;
    },
    deposit: function(amount) {
      balance = balance + amount;
    }
  }

  return publicAPI;
}

var savingsAccount = makeAccount();
var otherAccount = makeAccount();

savingsAccount.getBalance();
savingsAccount.deposit(50);

otherAccount.getBalance();


var makeTicker = function() {
  var count = 0;

  var publicAPI = {
    tick: function() {
      count++;
      return count;
    }
  }
  return publicAPI;
}


// write a ticker
var myTicker = makeTicker()
myTicker.tick() // 1
myTicker.tick() // 2

var anotherTicker = makeTicker();
anotherTicker.tick() // 1




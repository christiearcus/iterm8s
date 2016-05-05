class Account

  def initialize(name = '')
    @balance = 0
    @name = name
  end

  def balance
    return @balance
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def name
    @name
  end

end
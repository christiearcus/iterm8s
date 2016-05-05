module Bank
  class Account

    attr_reader :name

    def initialize(options = {})
      @balance = options[:balance] || 0
      @name = options[:name]
    end

    def balance
      return @balance
    end

    def deposit(amount)
      @balance = @balance + amount
    end

    def withdraw(amount)
      if amount <= @balance
        @balance = @balance - amount
        return @balance
      else
        return false
      end
    end
  end
end
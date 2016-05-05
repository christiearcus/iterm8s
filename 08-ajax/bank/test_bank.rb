require 'minitest/autorun'
require "minitest/reporters" # optional
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new() # optional

require_relative 'bank'

class BankTest < MiniTest::Test

  # setup will run automatically before each test 
  def setup
    @account = Account.new
  end

  def test_can_open_new_account
    # expeced, actual
    assert_equal Account, @account.class
  end

  def test_new_account_has_balance_of_zero
    # expected, actual
    assert_equal 0, @account.balance 
  end

  def test_balance_increases_by_deposit
    old_balance = @account.balance
    @account.deposit(50)
    new_balance = @account.balance

    assert_equal (old_balance + 50), new_balance
  end

  def test_new_account_can_have_name
    account = Account.new('iterm8s')
    assert_equal 'iterm8s', account.name
  end

end
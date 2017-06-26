require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../../other/validator.rb")

class TestValidator < MiniTest::Test

  def test_empty_input__string__true()
    assert(Validator.input_empty?(""))
  end

  def test_empty_input__string__false()
    assert(!Validator.input_empty?("String"))
  end

  def test_empty_input__int()
    assert(!Validator.input_empty?(6))
    assert(!Validator.input_empty?(8362839))
    assert(!Validator.input_empty?(-873))
  end

  def test_empty_input__nil()
    assert(Validator.input_empty?(nil))
  end

end

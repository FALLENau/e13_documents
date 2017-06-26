require 'minitest/autorun'
require 'minitest/rg'
require_relative 'brewdog'

class TestBrewDog < Minitest::Test

  def setup
    @customer = [{
      name: 'Reece',
      cash: 10,
      beer: []
      },
      {
        name: 'Eugene',
        cash: 2,
        beer: []
        }]
    @brewdog = {
      beer: [{name: 'Elvis Juice'}]
      cash: 1050
    }
  end

end

def test_add_or_remove_cash__add
  add_or_remove_cash(@customer[name:]['Reece'], -10)
  cash = total_cash(@customer[name:]['Reece'])
end

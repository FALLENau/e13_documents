require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../../models/team.rb")

class TestTeam < MiniTest::Test

  def setup
    @team_1 = Team.new(
      {
        "name" => "The Team",
        "score" => 0
      }
    )
  end

  def test_increase_score
    @team_1.increase_score(10)
    assert_equal(10, @team_1.score)
    @team_1.increase_score(90)
    assert_equal(100, @team_1.score)
    @team_1.increase_score(-200)
    assert_equal(-100, @team_1.score)
  end

  def test_decrease_score
    @team_1.decrease_score(10)
    assert_equal(-10, @team_1.score)
    @team_1.decrease_score(90)
    assert_equal(-100, @team_1.score)
    @team_1.decrease_score(-200)
    assert_equal(100, @team_1.score)
  end

end

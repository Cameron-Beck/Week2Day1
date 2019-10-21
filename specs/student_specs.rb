require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < MiniTest::Test

  def test_get_student_name
    student = Student.new("Cameron", "E35", "Ruby")
    assert_equal("Cameron", student.get_student_name)
  end

  def test_get_cohort_name
    student = Student.new("Cameron", "E35", "Ruby")
    assert_equal("E35", student.get_student_cohort)
  end

  def test_set_student_name
    student = Student.new("Cameron", "E35", "Ruby")
    student.set_student_name("Ryan")
    assert_equal("Ryan", student.get_student_name)
  end

  def test_set_cohort
    student = Student.new("Cameron", "E35", "Ruby")
    student.set_student_cohort("E36")
    assert_equal("E36", student.get_student_cohort)
  end
  # def test_set_student_name_and_cohort
  #   student = Student.new("Cameron", "E35", "Ruby")
  #   student.set_cohort("E36")
  #   assert_equal("Ryan", student.get_student_name_and_cohort)
  # end

  def test_talk()
    student = Student.new("Cameron", "E35", "Ruby")
    assert_equal("Hello my name is Cameron and I'm in cohort E35", student.talk)
  end

  def test_favourite_language()
    student = Student.new("Cameron", "E35", "Ruby")
    assert_equal("I am Cameron and my fav language is Ruby", student.fav_language )
  end
end

class TestTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new("Arsenal", ["henry", "john", "Kyle"], "MR Juan")
    assert_equal("Arsenal", team.name)
  end

  def test_get_players_names
    team = Team.new("Arsenal", ["henry", "john", "Kyle"], "MR Juan")
    assert_equal(["henry", "john", "Kyle"], team.players)
  end

  def test_get_coach_name
    team = Team.new("Arsenal", ["henry", "john", "Kyle"], "MR Juan")
    assert_equal("MR Juan", team.coach)
  end

  def test_set_coach_name
    team = Team.new("Arsenal", ["henry", "john", "Kyle"], "MR Juan")
    team.coach = "MR John"
    assert_equal("MR John", team.coach)
  end

  def test_add_new_player
    team = Team.new("Arsenal", ["henry", "john", "Kyle"], "MR Juan")
    team.players.push("Jamie")
    assert_equal(["henry", "john", "Kyle", "Jamie"], team.players)
  end

  def test_player_exsists
    team = Team.new("Arsenal", ["henry", "john", "Kyle"], "MR Juan")
    assert_equal(true, team.player_exsists)
  end

  def test_team_won
    team = Team.new("Arsenal", ["henry", "john", "Kyle"], "MR Juan")
    team.team_won
    assert_equal(1,team.points)
  end





end

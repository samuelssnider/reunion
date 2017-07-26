require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def test_it_can_be_initalized
    ac = Activity.new("Lunch")
  end

  def test_it_has_a_name
    ac = Activity.new("Bowling")
    assert_equal "Bowling", ac.name
  end

  def test_it_starts_with_no_participants
    ac = Activity.new("Bowling")
    assert ac.participants.empty?
  end

  def test_participants_can_be_added
    ac = Activity.new("Bowling")
    assert ac.participants.empty?
    ac.add_participant("Jim", 20)
    assert_equal 1, ac.participants.count
  end

  def test_multiple_participants_can_be_added
    ac = Activity.new("Bowling")
    ac.add_participant("Jim", 20)
    ac.add_participant("Joe", 40)
    assert_equal 2, ac.participants.count
    assert_equal 40, ac.participants["Joe"]
  end

  def test_total_cost_can_be_got
    ac = Activity.new("Bowling")
    ac.add_participant("Jim", 20)
    ac.add_participant("Joe", 40)
    assert_equal 60, ac.total_cost
  end

  def test_split_can_be_got
    ac = Activity.new("Bowling")
    ac.add_participant("Jim", 20)
    ac.add_participant("Joe", 40)
    assert_equal 30, ac.split
  end

  def test_owed_returns_the_right_stuff
    ac = Activity.new("Bowling")
    ac.add_participant("Jim", 20)
    ac.add_participant("Joe", 40)
    hash = {"Jim" => 10, "Joe" => -10}
    assert_equal hash, ac.owed
  end



end

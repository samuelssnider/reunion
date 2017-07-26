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
    binding.pry
    assert_equal 1, ac.participants.count
  end


end

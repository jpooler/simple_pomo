require "test_helper"

class SimplePomoTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SimplePomo::VERSION
  end
  def setup
    @simple_pomo = SimplePomo.new
  end

  def test_that_we_can_start_a_timer
    assert_equal "Timer started", @simple_pomo.start_timer?
  end
end

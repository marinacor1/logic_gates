require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/multi'

class MultiTest < Minitest::Test
  def test_multi_instantiates
    gate = And::Multi.new(4)
    gate.instance_of? And::Multi
  end

  def test_multi_returns_0_without_d_value
    gate = And::Multi.new(4)
    #doesn't recognize the input_a, etc.
    gate.input_a = 1
    gate.input_b = 1
    gate.input_c = 1
    assert_equal 0, gate.output
  end
end

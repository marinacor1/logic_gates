require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/double'

class DoubleTest < Minitest::Test

  def test_double_class_instantiates
    gate = And::Double.new
    gate.instance_of? And::Double
  end

  def test_gate_if_both_input_are_1_correct_output
    gate = And::Double.new
    gate.input_a = 1
    gate.input_b = 1
    assert_equal 1, gate.output
  end

  def test_gate_if_one_input_0_correct_output
    gate = And::Double.new
    gate.input_a = 1
    gate.input_b = 0
    assert_equal 0, gate.output
  end


end

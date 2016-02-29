require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/triple'

class TripleTest < Minitest::Test
  def test_triple_class_instantiates
    gate = And::Triple.new
    gate.instance_of? And::Triple
  end

  def test_triple_class_creates_correct_output_when_no_c_value
    gate = And::Triple.new
    gate.input_a = 1
    gate.input_b = 1
    assert_equal 0, gate.output
  end

  def test_triple_class_creates_correct_output_when_no_b_and_c_value
      gate = And::Triple.new
      gate.input_a = 0
      assert_equal 0, gate.output
  end

  def test_triple_class_creates_correct_output_when_aand_b_equal_one
    gate = And::Triple.new
    gate.input_a = 1
    gate.input_b = 1
    assert_equal 0, gate.output
  end

end

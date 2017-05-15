gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_has_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_it_has_nothing_after
    node = Node.new("splat")
    assert_nil node.next_node
  end
end

gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_is_empty
    list = LinkedList.new
    assert_nil list.head
  end

  def test_it_can_add_things
    list = LinkedList.new
    list.append("doop")
    list.append("splat")
    list.append("pop")
    list.append("bah")
    list.append("boo")
    assert_equal "doop splat pop bah boo" , list.to_string
  end

  def test_it_can_count
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_it_can_output_head
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_it_can_output_all_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_it_can_create_new_head
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_it_can_insert_anywhere
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.insert(1, "woo")
    assert_equal "plop woo suu", list.to_string

    list.insert(2, "bang")
    assert_equal "plop woo bang suu", list.to_string
  end
end

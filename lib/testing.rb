# frozen_string_literal: true

require_relative "./node"
require_relative "./linked_list"

test_list = LinkedList.new
puts "List initiation. Expected list size: 0; actual list size: #{test_list.size}"
test_list.append(5)
puts "Append first element. Expected list size: 1; actual list size: #{test_list.size}"
test_list.append(7)
puts "Append second element. Expected list size: 2; actual list size: #{test_list.size}"
test_list.append(9)
test_list.append(11)
puts "Append 4 elements. Expected list size: 4; actual list size: #{test_list.size}"
puts "Appended 4 elements."
puts "    expect: 5 -> 7 -> 9 -> 11 -> nil"
puts "    actual: #{test_list.to_s}"
puts ""
test_list.prepend(99)
test_list.prepend(98)
test_list.prepend(97)
puts "Prepend 3 elements. Expected list size: 7; actual list size: #{test_list.size}"
puts "Prepended 3 elements."
puts "    expect: 97 -> 98 -> 99 -> 5 -> 7 -> 9 -> 11 -> nil"
puts "    actual: #{test_list.to_s}"
puts "Test #head method. expect 97; actual: #{test_list.head}"
puts "Test #tail method. expect: 11; actual: #{test_list.tail}"
puts ""
puts "The #at(index) works for index = 0. expect: 97; actual #{test_list.at(0)}"
puts "The #at(index) works for tail. expect: 11; actual #{test_list.at(6)}"

random_index = (1..(test_list.size - 1)).to_a.sample
index_hash = {
  0 => 97,
  1 => 98,
  2 => 99,
  3 => 5,
  4 => 7,
  5 => 9,
  6 => 11
}
puts "#at(index) works for random index (#{random_index}). expect #{index_hash[random_index]}; "\
"actual: #{test_list.at(random_index)}"
puts ""
test_list.pop
puts "#pop removes the last element in the list."
puts "    expect: 97 -> 98 -> 99 -> 5 -> 7 -> 9 -> nil"
puts "    actual: #{test_list.to_s}"
puts ""
puts "#contains works for first element. expect true; actual: #{test_list.contains?(97)}"
puts "#contains works for last element. expect true; actual: #{test_list.contains?(9)}"
puts "#contains returns false in not present. expect false; actual: #{test_list.contains?(999)}"
puts ""
puts "#find works for first element. expect 0; actual #{test_list.find(97)}"
puts "#find works for last element. expect 5; actual #{test_list.find(9)}"
random_index = (1..(test_list.size - 1)).to_a.sample
puts "#find works for random element (#{index_hash[random_index]}). expect #{random_index}; actual #{test_list.find(index_hash[random_index])}"
puts "#find return nil if not present. expect nil; actual: #{test_list.find(999)}"
puts ""
test_list.insert_at(50, 2)
puts "#insert_at works in the middle."
puts "    expect: 97 -> 98 -> 50 -> 99 -> 5 -> 7 -> 9 -> nil"
puts "    actual: #{test_list.to_s}"
test_list.insert_at(51, 0)
puts "#insert_at works at the head."
puts "    expect: 51 -> 97 -> 98 -> 50 -> 99 -> 5 -> 7 -> 9 -> nil"
puts "    actual: #{test_list.to_s}"
test_list.insert_at(52, 8)
puts "#insert_at works at the end of the list"
puts "    expect: 51 -> 97 -> 98 -> 50 -> 99 -> 5 -> 7 -> 9 -> 52 -> nil"
puts "    actual: #{test_list.to_s}"
puts ""
test_list.remove_at(0)
puts "#remve_at works at the head."
puts "    expect: 97 -> 98 -> 50 -> 99 -> 5 -> 7 -> 9 -> 52 -> nil"
puts "    actual: #{test_list.to_s}"
test_list.remove_at(7)
puts "remove_at works at the end of the list"
puts "    expect: 97 -> 98 -> 50 -> 99 -> 5 -> 7 -> 9 -> nil"
puts "    actual: #{test_list.to_s}"
test_list.remove_at(3)
puts "remove_at works in the middle of the list"
puts "    expect: 97 -> 98 -> 50 -> 5 -> 7 -> 9 -> nil"
puts "    actual: #{test_list.to_s}"


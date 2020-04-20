# frozen_string_literal: true

def merge_sort(array)
  return array if array.length < 2

  left = []
  right = []
  array.each_with_index do |elem, i|
    if i < array.length / 2
      left += [elem]
    else
      right += [elem]
    end
  end

  left = merge_sort(left)
  right = merge_sort(right)

  # Then merge the now-sorted sublists.
  merge(left, right)
end

def merge(left, right)
  result = []

  while !left.empty? && !right.empty?
    result += if left[0] <= right[0]
                [left.shift]
              else
                [right.shift]
              end
  end

  # Either left or right may have elements left; consume them.
  # (Only one of the following loops will actually be entered.)
  result += [left.shift] until left.empty?
  result += [right.shift] until right.empty?
  result
end

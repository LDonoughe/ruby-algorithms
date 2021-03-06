# frozen_string_literal: true

# Lomuto Parition for Quicksort

# init
def lomuto(array)
  lomuto_sort(array, 0, array.length - 1)
end

# sort
def lomuto_sort(array, lo, hi)
  if lo < hi
    p = partition(array, lo, hi)
    lomuto_sort(array, lo, p - 1)
    lomuto_sort(array, p + 1, hi)
  end
  array
end

# partition
def partition(array, lo, hi)
  mid = (lo + hi) / 2
  swap(array, lo, mid) if array[mid] < array[lo]
  swap(array, lo, hi) if array[hi] < array[lo]
  swap(array, mid, hi) if array[mid] < array[hi]
  pivot = array[hi]

  i = lo
  (lo..hi).each do |j|
    if array[j] < pivot
      swap(array, i, j)
      i += 1
    end
  end
  ai = array[i]
  ahi = array[hi]
  array[i] = ahi
  array[hi] = ai
  i
end

def swap(array, x, y)
  ax = array[x]
  ay = array[y]
  array[y] = ax
  array[x] = ay
end

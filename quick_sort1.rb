def quick_sort(array, l_bound=0, h_bound=array.size-1)
  pivot_index = h_bound / 2
  return array if (pivot_index >= h_bound || pivot_index <= l_bound)
  pivot_val = array[pivot_index]
  sorted_halves = [pivot_val]
  l_bound.upto(h_bound) do |index|
    next if index == pivot_index
    if array[index] <= pivot_val
      sorted_halves.unshift(array[index])
    else
      sorted_halves << array[index]
    end
  end
  array[l_bound..h_bound] = sorted_halves
  array = quick_sort(array, pivot_index+1, h_bound)
  quick_sort(array, l_bound, pivot_index-1)
end
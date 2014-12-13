def quick_sort(array)
  p array
  return array if (array.size == 0 || array.size == 1)
  pivot_index = array.size / 2
  sorted_array = quick_sort_helper(array, pivot_index)
  array1 = sorted_array[0..pivot_index]
  array2 = sorted_array[pivot_index+1..array.length-1]
  p "a1 is #{array1}"
  p "a2 is #{array2}"
  quick_sort(array1) + quick_sort(array2)
end

def quick_sort_helper(array, pivot_index)
  array1 = []
  array2 = []
  pivot_array = []
  array.each do |e|
    if e > array[pivot_index]
      array2 << e
    elsif e < array[pivot_index]
      array1 << e
    else
      pivot_index << e
    end
  end
  array1 + pivot_array + array2
end
def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high
    mid = (low + high)/2
    guess = list[mid]
    if guess == item
      return mid
    elsif guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
  "none"

end

my_list = [1,3,4,7,9]
puts binary_search(my_list, 9)
puts binary_search(my_list, 90)

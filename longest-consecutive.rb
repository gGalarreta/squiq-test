def LongestConsecutive(arr)

  # code goes here

  count = 0
  sorted_arr = arr.sort()
  solution = 0
  sorted_arr = sorted_arr.uniq

  for i in 0..(sorted_arr.size - 1)
    if (i > 0 ) && (sorted_arr[i] == sorted_arr[i - 1] + 1)
      count += 1
    else
      count = 1
    end
    solution = [solution, count].max
  end

  return solution

end

# keep this function call here 
puts LongestConsecutive(STDIN.gets)
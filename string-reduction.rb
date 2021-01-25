def StringReduction(str)

  # code goes here
  dictionary = {
    "ab" => "c",
    "ac" => "b",
    "bc" => "a",
    "ba" => "c",
    "ca" => "b",
    "cb" => "a"
  }
  valid = true
  while valid
    i = 0
    valid = false
    while i < (str.size - 1)
      if str[i] != str[i+1] && dictionary[str[i..(i+1)]]
        str[i..(i+1)] = dictionary[str[i..(i+1)]]
        valid = true
      else
        i += 1
      end
    end
  end
  return str.size
end

# keep this function call here 
puts StringReduction(STDIN.gets)
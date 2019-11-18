def collatz(num)
  arr_collatz = [num]
  while arr_collatz[arr_collatz.length - 1] != 1
    last = arr_collatz[arr_collatz.length - 1]
    if last % 2 == 0
      arr_collatz.push(last / 2)
    else 
      arr_collatz.push((last * 3) + 1)
    end
  end
  return arr_collatz
end

def collatz_length(total)
  int = 1
  max_length = [1,1]
  while int < total
    new_length = collatz(int).length
    if new_length > max_length[0]
      max_length[0] = new_length
      max_length[1] = int
    end
    int = int + 1
  end
  return max_length[1]
end

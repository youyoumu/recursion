def fibs(theNumber)
  arr = [0, 1]
  return [0] if theNumber == 1
  return [0, 1] if theNumber == 2

  i = 3

  while i <= theNumber
    arr.push(arr[i-3] + arr[i-2])
    i += 1
  end

  return arr
end

# p fibs(50)

def fibs_rec(theNumber)
  if theNumber == 1
    return [0]
  elsif theNumber == 2
    return [0, 1]
  else
    prev = fibs_rec(theNumber - 1)
    a = prev[-1] + prev[-2]
    prev.push(a)
    return prev
  end
end

p fibs_rec(50)

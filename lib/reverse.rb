def reverse_unshift(arr)
  new_array = [] # O(1)
  arr.each{|e| new_array.unshift(e)} # O(n)
  new_array # O(1)
end # final type of complexity is "O(n)"

def reverse_push(arr)
  new_array = [] # O(1)
  i = arr.length # O(1)
  while i > 0 # O(1)
    new_array << arr[i - 1] # O(n)
    i -= 1 # O(1)
  end
  new_array # O(1)
end # final type of complexity is "O(n)"
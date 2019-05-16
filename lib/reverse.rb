def reverse(arr)
  new_array = [] # O(1)
  arr.each{|e| new_array.unshift(e)} # O(n)
  new_array # O(1)
end
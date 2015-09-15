# 100% 100% 100%

def solution(x, a)
  full_hash = {}
  a.each_with_index do |el, index|
    if full_hash.has_key?(el) && full_hash.size == x
      return index - 1
    else
      full_hash[el] = 1
    end
  end
  if full_hash.size == x
    return a.size - 1
  else
    return -1
  end
end

array = [2, 2, 2, 2, 2]
puts solution(2, array)
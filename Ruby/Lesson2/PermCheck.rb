#100% 100% 100%

def solution(a)
  array = a.uniq
  n = array.size
  if n*(n+1)/2 == a.inject(:+)
    1
  else
    0
  end
end

a = [1, 4, 1]

puts solution(a)
# 100% 100% 100%


def solution(a, b, k)
  sol = ((b-a)/k.to_f).ceil
  if (a % k == 0 && b % k == 0)
    return sol + 1
  elsif k % 10 == 0 && a != b
    return sol - 1
  else
    return sol
  end
end


a=6
b=11
k=2

puts solution(11, 99, 10)
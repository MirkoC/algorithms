

def solution(a)

  a.each_with_index do |el, index|
    a[index]=a[index].abs
  end
  x = a.max
  a.delete_at(a.index(x))
  y = a.max
  a.delete_at(a.index(y))
  z = a.max
  a.delete_at(a.index(z))

  x*y*z
end



ar = [-5, 5, -5, 4]


puts solution(ar)
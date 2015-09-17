

def solution(a)
  a = a.sort{|a,b| b.abs <=> a.abs}
  counter = 0
  a[0..2].each do |el|
    if el < 0
      counter = counter + 1
    end
  end
  z = 0
  element = 0
  flag1 = false
  flag2 = false
  if counter == 1 || counter == 3
    b = a[0..2].sort
    b.each do |el, index|
      if el < 0
        element = el
      end
    end
    a[3..-1].each do |el|
      if el >= 0
        z = el
        flag1 = true
        break
      end
    end
    a[3..-1].each do |el|
      if z == el.abs && el < 0
        return a[0..1].inject(:*) * el
      end
    end if a[2] > 0 && counter == 1
    flag2 = true if flag1 == false
  end
  if flag2
    a.sort{|x,y| y <=> x}[0..2].inject(:*)
  else
    if !flag1
      a[0..2].inject(:*)
    else
      c = a[0..2]
      c.delete_at(c.index(element))
      c.inject(:*)*z
    end
  end
end



#ar = [-2, -2, -2, -2, 1, 1, 1, 1]
ar = [-1000, 2, 3, 100]

puts solution(ar)
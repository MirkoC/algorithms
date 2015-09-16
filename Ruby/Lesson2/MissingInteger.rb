# 100% 100% 100%


def solution(a)
  array = a.uniq.sort
  non_neg_array ||= []
  array.each do |el|
    if el > 0
      non_neg_array.push(el)
    end
  end
  array = non_neg_array
  array.each_with_index do |el, index|
    if el != (index + 1)
      if index-1 < 0
        return 1
      end
      return array[index - 1] + 1
    end
  end
  if array.size > 0
    return array.last+1
  else
    return 1
  end
end

a=[4, 5, 6, 2]

puts "-----> #{solution(a)} <-----"
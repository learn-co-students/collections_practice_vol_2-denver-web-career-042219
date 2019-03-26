# your code goes here

require 'pry'

# I dont love the way it does this
# take each word and if it starts with R shovel it over to a new array (acts as an iterator)
#
=begin
def begins_with_r(array)
  true_values = []
  array.select do |word|
    if word.start_with?('r', 'R')
      true_values << word
    end
  end
  if true_values.length == array.length
    return true
  else
    return false
  end
end
=end

# much happier with this one


def begins_with_r(array)
  array.select do |word|
    if word.start_with?('r', 'R')
    else
     return false
    end
  end
  return true
end








def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end


def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end


#really happy with this one
def remove_non_strings(array)
  array.select do |element|
    element.is_a? String
  end
end



# damn, that count.keys is slick, had that but never reached that conclusion
# I was trying somethings that didnt quite get there and im not sure would have


def count_elements(array)

  count = Hash.new(0)

  array.collect do |element|
    count[element] += 1
  #  binding.pry
  end

  count.collect  do |hash, number|
    hash[:count] = number
  #  binding.pry
  end
  count.keys
#  binding.pry
end

=begin
def count_elements(array)

  count = Hash.new(0)

    array.each do |element|
      element.each do |k, v|
        if count[:name] == v
# I know I can change the count value but how to iterate?
# it replaces and erases the current key:value
          count[:count] = 5
          binding.pry
        else
          count = {:name => v, :count => 1}
          binding.pry

        end
    end
  end


    puts count
  return count
end
=end




















=begin
=end

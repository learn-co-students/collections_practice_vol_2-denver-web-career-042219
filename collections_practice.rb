require "pry"

def begins_with_r(array)
  i = 0
  array.each do |x|
    if x.start_with?('r')
      i += 0
    else
      i += 1
    end
#    binding.pry
  end
  if i == 0
    true
  else false
  end
end

def contain_a(words)
  array = []
  words.each do |x|
    if x.include?("a")
      array << x
    end
  end
  array
end

def first_wa(words)
  array = []
  first_word = ""
  words.each do |x|
#    binding.pry
    if x.to_s.start_with?("wa")
      array << x
    end
  end
  first_word = array[0].to_s
  first_word
end

def remove_non_strings(array)
  array.delete_if do |x|
    !(x.is_a? String)
  end
end

def count_elements(hash)
  array = []
  number = 1
  hash.each do |x|
#    binding.pry
      array << [x.merge(:count => number)]
    end
  array.flatten
#  binding.pry
end


#   array = []
#   count = Hash.new 0
#   hash.each do |x|
# #    binding.pry
#     array << x.values
#   end
#   array.join(" ")
#   array.each do |word|
#     count[word] +=1
#   end
#   count
# #  binding.pry

def merge_data

end

def find_cool

end

def organize_schools

end

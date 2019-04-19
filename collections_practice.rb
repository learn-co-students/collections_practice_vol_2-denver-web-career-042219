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
#   array = []
#   number = 1
#   hash.each do |x|
# #    binding.pry
#       array << [x.merge(:count => number)]
#     end
#   array.flatten
# #  binding.pry
# end


  array = []
  result = {}
  array_2 = []
  count = Hash.new 0
  hash.each do |x|
#    binding.pry
    array << x.values
  end
  array.join(" ")
  array.each do |word|
#    binding.pry
    count[word] +=1
  end
#  binding.pry
  count.each do |i, j|
    result = {:count => j, :name => i.join}
    array_2 << result
#    binding.pry
  end
  array_2
end
#  binding.pry

def merge_data(keys, data)
  #merge fuctions keys and data into a single hash function
  #extract hash from keys and hash within hash from data
  #merge extracted data into single hash sets and return into array
  array = []

  data.each do |hash|
    hash.each do |name|
      keys.each do |person|
          if name[0] == person[:first_name]
            key = name[1].merge(person)
            array << key
        #    binding.pry
          end
      end
    end
  end
  array
end

def find_cool(cool)
  #iterate through cool hash and find hash of "cool" person
  array = []
  cool.each do |person|
    if person[:temperature] == "cool"
      array << person
#      binding.pry
    end
  end
  array
end

def organize_schools(schools)
  hash = {"NYC" => [], "SF" => [], "Chicago" => []}
  schools.each do |bootcamp|
    if bootcamp[1][:location] == "NYC"
      hash["NYC"] << bootcamp[0]
    elsif bootcamp[1][:location] == "SF"
      hash["SF"] << bootcamp[0]
    elsif bootcamp[1][:location] == "Chicago"
      hash["Chicago"] << bootcamp[0]
    end
#    binding.pry
  end
  hash
end

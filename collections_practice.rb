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

# grab the key:values from data and move them into keys


=begin
def merge_data(keys, data)


merged_hash = Hash.new

    keys.map do |elements|
      elements.map do |name, value_two|
        merged_hash[name] = value_two
      #  binding.pry
        if value_two = data[0].keys
            data[0].map do |k, v|
            merged_hash =  merged_hash.merge(v)
              #  binding.pry

            #  v.each do |category, value|
            #    binding.pry
            #    merged_hash[category] = value

            #  binding.pry
            #  end
            end
        end
      end
      # binding.pry
    end
  puts merged_hash
  return merged_hash

  end
=end

# used .map to create and return an array that stored the merged_hash info for each ashley and blake
def merge_data(keys, data)
  data[0].map do |name, info_hash|
    merged_hash = Hash.new
    keys.each do |hash|
      if hash[:first_name] == name
        merged_hash = info_hash.merge(hash)
      end
    end
    #binding.pry
    merged_hash
  end
end

# I think this could be shorter without using the shovel and outside array but cant get the return value correct
def find_cool(hash)
  cool_array = Array.new

  hash.find do |element|
    element.find do |k, v|
      if v == "cool"
      cool_array << element
      end
    end
  end
  return cool_array
end

=begin
#still getting the rewriting thing

#could also sort first
#right now it rewrites over the first NYC
def organize_schools(schools)
  school_hash_two = Hash.new


  schools.map do |school, location_info|
    school_hash = Hash.new
    location_info.map do |k, v|
     if school_hash.include?(v)
        school_hash[v] << school
      else
        school_hash = {v => [school]}
      #  binding.pry
      end
      school_hash_two = school_hash_two.merge(school_hash)
    #  school_hash_two = school_hash_two.
    end
puts school_hash_two
  end

end
=end



def organize_schools(schools)
  school_hash_two = Hash.new
  school_hash = Hash.new

  schools.map do |school, location_info|
    location_info.map do |k, v|
      if school_hash_two.has_key?(v) || school_hash.has_key?(v)
        school_hash_two[v] << school
      else
        school_hash = {v => [school]}
      end
      school_hash_two = school_hash_two.merge(school_hash)
    end
  end
  #  binding.pry
  #puts school_hash_two
    school_hash_two

#binding.pry
end























=begin
def keys
  [
      {
          :first_name => "blake",
               :motto => "Have a koala-ty day!"
      },
      {
          :first_name => "ashley",
               :motto => "I dub thee, 'Lady Brett Ashley'."
      }
  ]

end

def data
  [
         {
           "blake" => {
              :awesomeness => 10,
                   :height => "74",
                :last_name => "johnson"
          },
          "ashley" => {
              :awesomeness => 9,
                   :height => 60,
                :last_name => "dubs"
          }
      }
  ]
end


let(:merged_data) {
  [
      {
           :first_name => "blake",
          :awesomeness => 10,
               :height => "74",
            :last_name => "johnson",
                :motto => "Have a koala-ty day!"

      },
      {
           :first_name => "ashley",
          :awesomeness => 9,
               :height => 60,
            :last_name => "dubs",
                :motto => "I dub thee, 'Lady Brett Ashley'."

      }
  ]
}
=end

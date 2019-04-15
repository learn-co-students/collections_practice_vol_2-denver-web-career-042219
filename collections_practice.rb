require 'pry'

def begins_with_r(arr)
  arr.all? { | element | element.start_with?("r") }
end

def contain_a(arr)
  arr.select { | element | element.include?("a") } 
end

def first_wa(arr)
  arr2 = arr.collect { | element | element.to_s }
  arr2.find { | element | element.start_with?("wa") }
end
   
def remove_non_strings(arr)
  arr.delete_if { | element | element.class != String }
end

def count_elements(arr)
  arr.group_by(&:itself).collect do | key, value |
    key.merge(count: value.length)
  end
end

def merge_data(keys, data)
  arr = []
   data.each do | description |
    description.each do | name, value |
     keys.each do | key_name |
      if key_name.values[0] == name
        arr << key_name.merge(value)
      end
     end
    end
   end
 arr
end

def find_cool(cool)
    cool.select { | info | info[:temperature] == "cool" }
end

def organize_schools(schools)
  hash = {}
    schools.each do | school, location_hash |
     location_hash.each do | location, city |
      if hash[city] == nil
        hash[city] = [school]
      else
        hash[city] << school  
      end
    end
  end
 hash
end

 
 



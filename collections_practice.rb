def begins_with_r(array)
  for string in array
    if string[0]!= "r"
      return false
    end
    
end
return true
end


def contain_a(array)
  strings_with_a = []
    for string in array
      if string.include?"a"
        strings_with_a<< string
      end
    end

  return strings_with_a
end

def first_wa(array)
  for string in array
    if string[0..1] == "wa"
      return string
    end
    
end
end
  
def remove_non_strings(array)
  array.delete_if{|element| !element.kind_of?String}
  return array
end

def count_elements(array)
  name_counts={}
  name_array = []
  array.each do |item|
    if name_counts.has_key?(item[:name])
      name_counts[item[:name]] +=1
    else  name_counts[item[:name]] =1 
  end
end
  name_counts.each do |name, count|
    name_array<< {:name => name, :count => count}
  end
  return name_array
  
end

def merge_data(keys, data)
  new_hash = {}
  data.each do |blake_array|
    blake_array.each do |blake_name, blake_data|
      new_hash[blake_name]=blake_data
    end
  end
  keys.each do |blake_hash|
    blake_hash[:first_name]
    other_data = new_hash[blake_hash[:first_name]]
    other_data.each do |key, value|
      blake_hash[key]=value
    end
  end
  return keys
end  

def find_cool(cool)
  cool_array = []
  cool.each do |person_records|
    if person_records[:temperature]== "cool"
      cool_array.push(person_records)
    end
  end
  return cool_array
end
  
  
def organize_schools(schools)
  organized_schools = {}
  nyc_array = []
  sf_array=[]
  chicago_array =[]
  
  schools.each do |name, information|
    if information[:location]=="NYC"
      nyc_array<< name
    elsif information[:location]=="SF"
      sf_array<< name
    else information[:location]== "Chicago"
      chicago_array<< name
    end
   end 
  organized_schools["Chicago"]=chicago_array
  organized_schools["SF"]=sf_array
  organized_schools["NYC"]=nyc_array
  
  return organized_schools

end
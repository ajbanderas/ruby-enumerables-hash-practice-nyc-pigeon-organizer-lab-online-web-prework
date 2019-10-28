def grab_pigeon_names(pigeon_hash)
  pigeon_names = []
  pigeon_hash.each do |key, value|
    value.each do |key, value|
      value.each {|element| pigeon_names << element}
    end
  end
  pigeon_names = pigeon_names.uniq
end

def create_new_hash(key_array)
  new_hash = {}
  key_array.each do |element|
    new_hash[element] = {:color => [], :gender => [], :lives => []}
  end
  new_hash
end

def set_new_values(source, target)
  
end

def nyc_pigeon_organizer(data)
  organized_hash = {}
  names = grab_pigeon_names(data)
  organized_hash = create_new_hash(names)
end


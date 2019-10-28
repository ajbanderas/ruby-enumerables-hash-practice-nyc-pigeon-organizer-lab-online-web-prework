def grab_pigeon_names(pigeon_hash)
  pigeon_names = []
  pigeon_hash.each do |key, value|
    value.each do |key, value|
      value.each {|element| pigeon_names << element}
    end
  end
  pigeon_names
end

def nyc_pigeon_organizer(data)
  organized_hash = {}
  names = grab_pigeon_names(data)
  pp names
end


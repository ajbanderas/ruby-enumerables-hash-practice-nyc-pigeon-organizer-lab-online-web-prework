pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
pigeon_names = []
attributes = {}
pigeon_list = {}

# get names
pigeon_data.each do |(key, value)|
  attributes << key
  value.each do |k, v|
  pigeon_names.concat(v)
  end
end
pigeon_names = pigeon_names.uniq

# add names as keys to the new hash
pigeon_list = Hash[pigeon_names.collect {|element| [element, {}]}]
pigeon_list.each {|(key, value)| key[value]}
p pigeon_list

# a hash is a copllection of a key : value pairs

colors = Hash.new
colors = {"red" => 0xFF0000, "green" => 0x00FF00, "blue" => 0x0000FF}

puts colors["green"]

colors["cyan"] = 0x00FFFF

puts colors

colors.delete("red")

puts colors

key_array = colors.keys

puts key_array
require("pry-byebug")

require_relative("../../models/team.rb")

Team.delete_all()

teams = []

teams[0] = Team.new({
  "name" => "Winners",
  "score" => 9
})

teams[1] = Team.new({
  "name" => "better Winners",
  "score" => 10000
})

teams[2] = Team.new({
  "name" => "We are awesome",
  "score" => -100
})

teams[3] = Team.new({
  "name" => "The team of winners who are good at winning and not loosing",
  "score" => 999
})

teams[4] = Team.new({
  "name" => "Frogs",
  "score" => 5
})

teams[5] = Team.new({
  "name" => "Onion Eaters",
  "score" => 10
})

teams[6] = Team.new({
  "name" => "Onion Eaters",
  "score" => 10
})

teams[7] = Team.new({
  "name" => "Onion Eaters",
  "score" => 10
})

teams[8] = Team.new({
  "name" => "Onion Eaters",
  "score" => 10
})

teams[9] = Team.new({
  "name" => "Onion Eaters",
  "score" => 10
})

teams.each() do |team|
  team.save()
end

teams[0].name = "Fun with ice cream"
teams[0].update()

# teams.each() do |team|
#   team.delete()
# end

binding.pry
nil

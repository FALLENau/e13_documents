require("sinatra")
require("sinatra/contrib/all")

require_relative("../other/presenter_manager.rb")
require_relative("../models/team.rb")

get("/panel/team") do
  @teams = Team.get_all("id", "ASC")
  erb(:"control_panel/teams/index")
end

get("/panel/settings") do
  @point_change_value = PresenterManager.increment_value
  erb(:"control_panel/settings/index")
end

post("/panel/team") do
  team = Team.new(params)
  team.save()
  redirect to("/panel/team")
end

post("/panel/settings") do
  new_value = params["point_edit_value"].to_i
  PresenterManager.change_increment_value(new_value)
  redirect to("/panel/settings")
end

post("/panel/team/:id") do
  team = Team.new(params)
  team.update
  redirect to("/panel/team")
end

post("/panel/team/:id/delete") do
  team = Team.find_by_id(params["id"])
  team.delete if(params["delete_check"])
  redirect to("/panel/team")
end

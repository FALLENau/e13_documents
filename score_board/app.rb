require("sinatra")
require("sinatra/contrib/all")

require_relative("controllers/team_controller.rb")
require_relative("controllers/control_panel_controller.rb")

get("/") do
  redirect to("/team")
end

class PresenterManager

  @@increment_value = 1
  @@TEAM_COLOURS = ["#1FC142","#5D12CE",
    "#D0111A","#1F63C1","#C402DE","#11D0B0",
    "#DD9F03","#588973","#C11F55","#C94418","#07ACDA"
  ]

  def PresenterManager.split_teams_into_rows(teams)
    row1 = []
    row2 = []
    mid_point = teams.length/2
    teams.each_with_index() do |team, index|
      if(index < mid_point)
        row1.push(team)
      else
        row2.push(team)
      end

    end

    rows = {row1: row1, row2: row2}
    return rows
  end

  def PresenterManager.increment_value()
    return @@increment_value
  end

  def PresenterManager.change_increment_value(new_value)
    @@increment_value = new_value
  end

  def initialize()
    @colour_counter = 0
  end

  def get_team_colour()
    @colour_counter = 0 if(@colour_counter >= @@TEAM_COLOURS.length)
    colour = @@TEAM_COLOURS[@colour_counter]
    @colour_counter += 1
    return colour
  end

end

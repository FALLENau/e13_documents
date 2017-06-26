require_relative("../database/database_assistant.rb")
require_relative("../other/validator.rb")

class Team < DatabaseAssistant

  @@TABLE_NAME = "teams"
  @@CLASS_NAME = "Team"

  attr_reader :score
  attr_accessor :name

  def initialize(options)
    options = fill_empty_attributes(options)
    super(options["id"], @@TABLE_NAME, "Team")
    @name = options["name"]
    @score = options["score"].to_i
  end

  def Team.delete_all()
    DatabaseAssistant.delete_all(@@TABLE_NAME)
  end

  def Team.find_by_id(id)
    return DatabaseAssistant.find(@@CLASS_NAME, @@TABLE_NAME, {"id" => id}).first()
  end

  def Team.find(to_find)
    return DatabaseAssistant.find(@@CLASS_NAME, @@TABLE_NAME, to_find)
  end

  def Team.get_all(sort_by = nil, order = nil)
    return DatabaseAssistant.get_all(@@CLASS_NAME, @@TABLE_NAME, sort_by, order)
  end

  def save()
    super(get_table_hash)
  end

  def update()
    super(get_table_hash)
  end

  def increase_score(amount)
    @score += amount
  end

  def decrease_score(amount)
    @score -= amount
  end

  private

  def fill_empty_attributes(options)
     options["name"] = "No team name" if(Validator.input_empty?(options["name"]))
     options["score"] = 0 if(Validator.input_empty?(options["score"]))
     return options
  end

  def get_table_hash()
    table = {
      "name" => @name,
      "score" => @score
    }
  end

end

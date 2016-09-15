class Robot
  attr_reader :name
  def name
    @name = [*('A'..'Z'), *('A'..'Z')][0,2].join + [*('0'..'9'), *('0'..'9'), *('0'..'9')][0,3].join
      return @name
  end

end
puts Robot.new.name
puts Robot.new.name

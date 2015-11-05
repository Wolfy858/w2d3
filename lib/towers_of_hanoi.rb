class TowersOfHanoi
  attr_reader :towers

  def play
    until won?
      puts render
      puts "select a from tower"
      from_tower = gets.chomp.to_i
      puts "select a to tower"
      to_tower = gets.chomp.to_i
      move(towers[from_tower], towers[to_tower])
    end
    puts "congrats, you win!"
  end

  def initialize(towers = [[3,2,1],[],[]])
    @towers = towers
  end

  def render
    return "#{@towers}"
  end

  def move(from_tower, to_tower)
    raise MoveError unless valid_move?(from_tower, to_tower)
    to_tower.push(from_tower.pop)
  end

  def valid_move?(from_tower, to_tower)
    !from_tower.empty? &&
    (to_tower.empty? || to_tower.last > from_tower.last)
  end


  def won?
    towers[0].empty? && (towers[1].empty? || towers[2].empty?)
  end

end

class MoveError < RuntimeError
end

if __FILE__ == $PROGRAM_NAME
  TowersOfHanoi.new.play
end

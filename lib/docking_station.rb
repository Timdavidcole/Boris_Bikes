DockingStation = Class.new

class DockingStation

  def initialize(newcap = 20)
    @CAPACITY = newcap
    @docked_bikes = []
  end

  attr_reader :docked_bikes
  # attr_reader currently does the same thing as check_bikes


  def release_bike
    fail "no bikes docked" if empty?(@docked_bikes)
    @docked_bikes.pop
  end

  def dock_bike (bike)
    fail "docking station full" if full?(@docked_bikes)
    @docked_bikes.push(bike)
  end

  def check_bikes
    @docked_bikes
  end
  def check_capacity
    @CAPACITY
  end
private
 def full?(bikes)
   bikes.length >= @CAPACITY
 end

 def empty?(bikes)
   bikes.length == 0
 end


end

DockingStation = Class.new

class DockingStation

  def initialize
    @docked_bikes = []
  end

  attr_reader :docked_bikes
  # attr_reader currently does the same thing as check_bikes

  def release_bike
    fail "no bikes docked" if @docked_bikes == []
    @docked_bikes.pop
  end

  def dock_bike (bike)
    fail "docking station full" if @docked_bikes.length >= 20
    @docked_bikes.push(bike)
  end

  def check_bikes
    @docked_bikes
  end

end

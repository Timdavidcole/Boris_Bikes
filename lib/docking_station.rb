DockingStation = Class.new

class DockingStation
  def initialize
    @docked_bikes = []
  end
  attr_reader :docked_bikes
  # attr_reader currently does the same thing as check_bikes
  def release_bike
    if @docked_bikes == []
      fail "no bikes docked"
    else
      Bike.new
    end
  end

  def dock_bike (bike)
    @docked_bikes.push(bike)

  end

  def check_bikes
    @docked_bikes
  end

end

require './lib/docking_station.rb'

describe DockingStation do
  it 'releases bike, when release_bike method is called' do
    expect(subject).to respond_to :release_bike
  end
end

describe DockingStation do
  it 'docks bike, when dock_bike method is called' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end
end

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
end

describe DockingStation do
  it 'release_bike initializes Bike object' do
    docking_station = DockingStation.new
    docking_station.dock_bike(Bike.new)
    expect(docking_station.release_bike.is_a? Bike).to eq true
  end
end
describe DockingStation do
  it 'shows docked bikes when check_bikes is called ' do
    docking_station = DockingStation.new
    bike1 = Bike.new
    docking_station.dock_bike(bike1)
    expect(docking_station.check_bikes).to eq [bike1]
  end
end

describe DockingStation do
  it 'dock the bike when dock_bike method is called ' do
    docking_station = DockingStation.new
    bike1 = Bike.new

    expect(docking_station.dock_bike(bike1)).to eq [bike1]
  end
end

describe DockingStation do
  it 'release_bike initializes Bike object that is working' do
    docking_station = DockingStation.new
    docking_station.dock_bike(Bike.new)
    expect(docking_station.release_bike.working?).to eq true
  end
end

describe DockingStation do
  it 'raises an error when release_bike called when no bikes docked' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error("no bikes docked")
  end
end

describe DockingStation do
  it 'raises an error when dock_bike called when docking station has more than 20 bikes' do
    docking_station = DockingStation.new
    20.times { docking_station.dock_bike(Bike.new) }
    expect { docking_station.dock_bike(Bike.new) }.to raise_error("docking station full")
  end
end

describe DockingStation do
  it "is able to initialise a dockingstation with a specified capacity " do
    station = DockingStation.new(15)
    expect(station.check_capacity).to eq 15
  end

end

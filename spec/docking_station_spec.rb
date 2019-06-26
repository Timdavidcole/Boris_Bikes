require './lib/docking_station.rb'

describe DockingStation do
  it 'releases bike, when release_bike method is called' do
    expect(subject).to respond_to :release_bike
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
    expect(docking_station.release_bike.is_a? Bike).to eq true
  end
end

describe DockingStation do
  it 'release_bike initializes Bike object that is working' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.working?).to eq true
  end
end

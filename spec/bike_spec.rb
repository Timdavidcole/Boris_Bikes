require 'docking_station'
require 'bike'

describe 'Bike' do
  it "expects Bike to respond to the method .working?" do
    bike = Bike.new
    expect(bike).to respond_to (:working?)
  end
end

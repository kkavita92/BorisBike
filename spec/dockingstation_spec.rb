require 'dockingstation'
describe DockingStation do
  it 'responds to the method release_bike'do
    expect(DockingStation.new).to respond_to(:release_bike) 
  end
end

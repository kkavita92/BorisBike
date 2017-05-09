require 'dockingstation'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'should create an instance of the DockingStation class' do
    expect(subject).to be_instance_of DockingStation
  end

  it 'releases a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike) #needs to remember which bike is docked
    expect(subject.bike).to eq bike #returns bike 
  end


end

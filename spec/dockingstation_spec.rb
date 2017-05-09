require 'dockingstation'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'is of class of station' do
    expect(subject).to be_instance_of DockingStation
  end

  it 'releases a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

    it { is_expected.to respond_to(:is_docked) }

    it 'docks a bike' do
      bike = subject.is_docked
      expect(bike).to be true
    end

end

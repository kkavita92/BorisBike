require 'dockingstation'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike' do

    it 'no release if no bike' do
      expect {subject.release_bike}.to raise_error{"No bikes left"}
    end

    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(bike).to be_working
    end

  end

  describe '#dock' do

    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises error if docking station at capacity' do
      20.times { subject.dock Bike.new }
      expect {subject.dock(Bike.new)}.to raise_error{"No spaces left"}
    end


  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike) #needs to remember which bike is docked
    expect(subject.bikes[-1]).to eq bike #returns bike
  end


end

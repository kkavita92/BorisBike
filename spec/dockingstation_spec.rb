require 'dockingstation'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  let(:bike) { double :bike }

#TESTS FOR RELEASE_BIKE
  describe '#release_bike' do


    it 'raises error when releasing bike from empty docking station' do
      expect {subject.release_bike}.to raise_error{"No bikes left"}
    end


    it 'does not release a damaged bike' do
      allow(bike).to receive(:report_broken) { true }
      subject.dock(bike)
      bike.report_broken
      expect{subject.release_bike}.to raise_error{"No working bikes available"}
    end

  end

#TESTS FOR DOCK
  describe '#dock' do
    it 'docks a bike' do
      bike = double(:bike)
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises error if docking station at capacity' do
      subject.capacity.times { subject.dock double(:bike) } #used to access constant
      expect {subject.dock(double(:bike))}.to raise_error{"No spaces left"}
    end
  end


  #TESTS FOR CAPACITY
    describe '#capacity' do
      it 'allows a new docking station to be created with a variable capacity' do
        expect(subject).to respond_to(:capacity)
      end

      it 'initiates with default capacity if no capacity is supplied' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end
  end


  it 'returns docked bikes' do #CHECK IF CORRECT!!!!
    bike = double(:bike)
    subject.dock(bike) #needs to remember which bike is docked
    expect(subject.bikes[-1]).to eq bike #returns bike
  end




end

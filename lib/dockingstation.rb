class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end
  def release_bike
    fail("No bikes left") if empty? #guard condition
    @bikes.pop
  end

  def dock(bike) #docks a bike instance
    fail("No spaces left") if full? #error if bike already has been docked
    @bikes.push(bike) #saves docked bike into memory so we can see it later
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end

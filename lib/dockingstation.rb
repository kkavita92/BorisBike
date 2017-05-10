class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end
  def release_bike
    fail("No bikes left") if @bikes.empty? #guard condition
    @bikes.pop
  end

  def dock(bike) #docks a bike instance
    fail("No spaces left") if @bikes.count >= 20 #error if bike already has been docked
    @bikes.push(bike) #saves docked bike into memory so we can see it later
  end

end

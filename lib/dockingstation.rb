require_relative 'bike'

class DockingStation

  attr_reader   :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail("No bikes left") if empty?
    fail("No working bikes available") unless release_working_bike
  end

  def dock(bike) #docks a bike instance
    fail("No spaces left") if full? #error if bike already has been docked
    @bikes.push(bike) #saves docked bike into memory so we can see it later
  end

  private

  def release_working_bike
    @bikes.delete(working_bikes.first)
  end

  def working_bikes
    @bikes.reject { |bike| bike.broken? }
  end

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

end

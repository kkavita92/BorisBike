class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike #saves docked bike into memory so we can see it later 
  end

end

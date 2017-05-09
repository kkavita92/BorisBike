require_relative 'bike'


class DockingStation

  def release_bike
    Bike.new
  end

  def is_docked
    @docked = true
   return @docked
  end

end
 

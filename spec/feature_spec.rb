require './lib/dockingstation'
require './lib/bike'

#p docking_station = DockingStation.new(50)
p docking_station = DockingStation.new(10)
p 9.times {docking_station.dock(Bike.new)}
p docking_station.dock(Bike.new)
#bike = Bike.new

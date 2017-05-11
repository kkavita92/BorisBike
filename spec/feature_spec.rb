require './lib/dockingstation'
require './lib/bike'

#p docking_station = DockingStation.new(50)
docking_station = DockingStation.new
bike = Bike.new
bike2 = Bike.new
bike.report_broken
docking_station.dock(bike)
docking_station.dock(bike2)
p docking_station.release_bike
p docking_station.bikes
#p 9.times {docking_station.dock(Bike.new)}
#p docking_station.dock(Bike.new)

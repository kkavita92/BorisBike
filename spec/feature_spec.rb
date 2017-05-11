require './lib/dockingstation'
require './lib/bike'

#Feature test for Challenge 18 
docking_station = DockingStation.new
bike = Bike.new
bike2 = Bike.new
bike.report_broken
docking_station.dock(bike)
docking_station.dock(bike2)
p docking_station.release_bike
p docking_station.bikes

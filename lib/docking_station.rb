class Bike
  def working?
    true 
  end
end 

class DockingStation
  def initialize
    @bike_store = []
  end

  def dock_bike(bike)
    raise RuntimeError, "Dock Capacity Limit Exceeded Error" if @bike_store.size >= 20
    @bike_store << bike
    @bike_store[-1]
  end

  def release_bike
    raise RuntimeError, "Dock Empty Error" if @bike_store.empty?
    @bike_store.pop
  end
end


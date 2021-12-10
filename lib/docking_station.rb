class Bike
  def working?
    true 
  end
end 

class DockingStation
  DEFAULT_CAPACITY = 20
  
  def initialize
    @bike_store = []
  end

  def dock_bike(bike)
    raise RuntimeError, "Dock Capacity Limit Exceeded Error" if full?
    @bike_store << bike
  end

  def release_bike
    raise RuntimeError, "Dock Empty Error" if empty?
    @bike_store.pop
  end

  private
  
  def full?
    @bike_store.size >= DEFAULT_CAPACITY
  end

  def empty?
    @bike_store.empty?
  end
end


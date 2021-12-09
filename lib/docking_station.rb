class Bike
  def working?
    true 
  end
end 

class DockingStation
  attr_reader :bike

  def release_bike
    raise RuntimeError, "Dock Empty Error" unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end
end




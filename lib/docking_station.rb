class Bike
  def working?
    true 
  end
end 

class DockingStation
  def dock_bike(bike)
    raise RuntimeError, "Dock Capacity Limit Exceeded Error" if @bike
    @bike = bike
  end

  def release_bike
    raise RuntimeError, "Dock Empty Error" unless @bike
    @bike
  end
end




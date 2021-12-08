require 'docking_station'

describe DockingStation do

  docking_station = DockingStation.new

  describe "#release_bike" do
    it "responds to release_bike method" do
      expect(docking_station).to respond_to(:release_bike)
    end
  end
end



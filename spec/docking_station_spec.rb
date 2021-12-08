require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
    describe "#release_bike" do
      it { is_expected.respond_to? (:release_bike) }
    end
end




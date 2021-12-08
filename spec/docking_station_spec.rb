require 'docking_station'

describe DockingStation do

    describe "#release_bike" do
      docking_station = DockingStation.new
      it { is_expected.to respond_to(:release_bike) }
    end

    describe "#release_bike" do
      it "releases a bike" do
        expect(subject.release_bike).to be_a Bike
      end

      it "released bike, then check if bike works" do
        expect(subject.release_bike.working?).to eq(true)
      end
    end

    describe "#dock_bike" do
      # docking_station = DockingStation.new
      it { is_expected.to respond_to(:dock_bike)}
    end
    
      it "adds a Bike object into @dock" do
        expect(subject.dock_bike(Bike)).to eq(Bike)
      end
end
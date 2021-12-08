require 'docking_station'

describe DockingStation do

    describe "#release_bike" do
      docking_station = DockingStation.new
      it { is_expected.respond_to? (:release_bike) }
    end

    describe "#release_bike" do
      it "releases a bike" do
        expect(subject.release_bike).to be_a Bike
      end

      it "released bike, then check if bike works" do
        expect(subject.release_bike.working?).to eq(true)
      end
    end
end
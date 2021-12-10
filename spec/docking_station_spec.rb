require 'docking_station'

describe DockingStation do

    describe "#release_bike" do
      docking_station = DockingStation.new
      it { is_expected.to respond_to :release_bike }

      it "raises error when there are no bikes in the docking station" do
        expect{ subject.release_bike }.to raise_error(RuntimeError, "Dock Empty Error")
      end

      it "released bike, then check if bike works" do
        bike = Bike.new
        subject.dock_bike(bike)
        expect(subject.release_bike.working?).to eq true
      end
    end

    describe "#dock_bike" do
      it { is_expected.to respond_to(:dock_bike).with(1).argument}
    end
    
      it "docks a bike object" do
        bike = Bike.new
        expect(subject.dock_bike(bike)).to eq [bike]
      end

      it "raises error when the DEFAULT_CAPACITY of the docking station is exceeded (MAX 20 BIKES)" do
        DockingStation::DEFAULT_CAPACITY.times do 
          subject.dock_bike(Bike.new) 
        end
        expect{ subject.dock_bike(Bike.new) }.to raise_error(RuntimeError, "Dock Capacity Limit Exceeded Error")
      end
end


require 'bike'

describe Bike do
  describe '#working?' do
    it {is_expected.respond_to? (:working?)}
  end
end


# describe Bike do
#   describe '#working?' do
#     it "responds to working? method" do
#       bike = Bike.new
#       expect(bike).respond_to? (:working?)
#     end
#   end
# end
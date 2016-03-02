require 'allvehicles/vehicles_collection.rb'

describe "Quadcopter" do

  describe "has no passenger capability and no weapons" do
    it "defaults to having no passengers or weapons" do
      qc = Allvehicles::Quadcopter.new(4, "Skycatch Inc", 2)
      expect( qc.has_weapons ).to eq "This is a civilian vehicle. No weapons."
      expect( qc.max_passengers ).to eq 0
    end
  end

end

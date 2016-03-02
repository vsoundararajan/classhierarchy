require 'allvehicles/vehicles_collection.rb'


describe "ElectricTank" do
  before do
    @et = Allvehicles::ElectricTank.new(4, "Holt Tank Company Inc", 2)
  end
  describe ".new" do
    it "sets weapons and electric power" do
      expect( @et.weapons? ).to eq true
      expect( @et.electric? ).to eq true
      expect( @et.manufacturer ).to eq "Holt Tank Company Inc"
    end
  end

  describe "#has_weapons" do
    it "can reload and shoot" do
      expect(@et.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
      expect( @et.remaining_ammo ).to eq 0
      10.times do @et.reload! end
      expect( @et.remaining_ammo ).to eq 10
      @et.shoot!
      expect( @et.remaining_ammo ).to eq 9
    end
  end

end


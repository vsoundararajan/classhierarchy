require 'allvehicles/vehicles_collection.rb'

describe "Electric Car" do
  context "when used as a civilian" do
    before do
      @ec = Allvehicles::ElectricCar.new(3, "Tesla", "Model S")
    end

    it "sets weapons? to false" do
      expect( @ec.weapons?).to eq false
    end

    it "sets max seats to 4" do
      expect( @ec.max_passengers).to eq 4
    end

    it "sets electric to false" do
      expect( @ec.electric?).to eq true
    end

    it "sets manufacturer to Tesla" do
      expect( @ec.manufacturer).to eq "Tesla"
    end

    it "sets manufacturer to Model S" do
      expect( @ec.model_num).to eq "Model S"
    end

  end

  context "when converted to a military vehicle" do
    before do
      @ec = Allvehicles::ElectricCar.new(3, "Tesla", "Model S")
    end

    it "sets weapons? to false" do
      expect( @ec.weapons?).to eq false
    end

    it "when set weapons to true has_weapons returns 'This vehicle has weapons capable of shooting.'" do
      @ec.weapons = true
      expect(@ec.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
      10.times do @ec.reload! end
      expect( @ec.remaining_ammo ).to eq 10
      5.times do @ec.shoot!  end
      expect( @ec.remaining_ammo ).to eq 5
    end

  end
end

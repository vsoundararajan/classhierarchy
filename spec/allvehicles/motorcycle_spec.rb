require 'allvehicles/vehicles_collection.rb'

describe "Motorcycle" do
  context "when used as a civilian" do
    before do
      @m = Allvehicles::Motorcycle.new(3, "Ducati", "streetfighter")
    end

    it "sets weapons? to false" do
      expect( @m.weapons?).to eq false
    end

    it "sets max seats to 1" do
      expect( @m.max_passengers).to eq 1
    end

    it "sets electric to false" do
      expect( @m.electric?).to eq false
    end

    it "sets manufacturer to Ducati" do
      expect( @m.manufacturer).to eq "Ducati"
    end

    it "sets model to streetfighter" do
      expect( @m.model_num).to eq "streetfighter"
    end

  end

  context "when converted to a military vehicle" do
    before do
      @m = Allvehicles::Motorcycle.new(3, "Ducati", "streetfighter")
    end

    it "sets weapons? to false" do
      expect( @m.weapons?).to eq false
    end

    it "when set weapons to true has_weapons returns 'This vehicle has weapons capable of shooting.'" do
      @m.weapons = true
      expect(@m.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
      10.times do @m.reload! end
      expect( @m.remaining_ammo ).to eq 10
      5.times do @m.shoot!  end
      expect( @m.remaining_ammo ).to eq 5
    end

  end
end

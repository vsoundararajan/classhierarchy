require 'allvehicles/vehicles_collection.rb'


describe "Car" do
  context "when used as a civilian" do
    before do
      @c = Allvehicles::Car.new(3, "Acura", "MDX")
    end

    it "sets weapons? to false" do
      expect( @c.weapons?).to eq false
    end

    it "sets max seats to 4" do
      expect( @c.max_passengers).to eq 4
    end

    it "sets electric to false" do
      expect( @c.electric?).to eq false
    end

    it "sets manufacturer to Acura" do
      expect( @c.manufacturer).to eq "Acura"
    end

    it "sets model to MDX" do
      expect( @c.model_num).to eq "MDX"
    end

  end

  context "when converted as a military vehicle" do
    before do
      @c = Allvehicles::Car.new(3, "Hummer", "H2")
    end

    it "sets weapons? to false" do
      expect( @c.weapons?).to eq false
    end

    it "when set weapons to true has_weapons returns 'This vehicle has weapons capable of shooting.'" do
      @c.weapons = true
      expect(@c.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
      10.times do @c.reload! end
      expect( @c.remaining_ammo ).to eq 10
      5.times do @c.shoot!  end
      expect( @c.remaining_ammo ).to eq 5
    end

  end
end

require 'allvehicles/vehicles_collection.rb'

describe "Plane" do

  context "when used as civilian plane" do
    before do
      @p = Allvehicles::Plane.new(3, "Lockheed", "B2 bomber")
    end

    it "sets weapons? to false" do
      expect( @p.weapons?).to eq false
    end

    it "sets electric to false" do
      expect( @p.electric?).to eq false
    end

    it "sets manufacturer to Lockheed" do
      expect( @p.manufacturer).to eq "Lockheed"
    end

    it "sets model_num to B2 bomber" do
      expect( @p.model_num).to eq "B2 bomber"
    end
  end

  context "when used as a military plane" do
    before do
      @p = Allvehicles::Plane.new(3, "Lockheed", "B2 bomber")
    end

    it "sets weapons? to false" do
      expect( @p.weapons?).to eq false
    end

    it "when set weapons to true" do
      @p.weapons = true
      expect( @p.weapons?).to eq true
    end

    it "sets electric to false" do
      expect( @p.electric?).to eq false
    end

    it "sets manufacturer to Lockheed" do
      expect( @p.manufacturer).to eq "Lockheed"
    end

    it "sets model_num to B2 bomber" do
      expect( @p.model_num).to eq "B2 bomber"
    end

    it "prints 'This vehicle has weapons capable of shooting. Reload and Shoot.'" do
      @p.weapons = true
      expect( @p.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
    end


    it "when set weapons to true has_weapons returns 'This vehicle has weapons capable of shooting.'" do
      @p.weapons = true
      expect(@p.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
      10.times do @p.reload! end
      expect( @p.remaining_ammo ).to eq 10
      5.times do @p.shoot!  end
      expect( @p.remaining_ammo ).to eq 5
    end

    
  end


end

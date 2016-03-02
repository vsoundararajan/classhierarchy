require 'allvehicles/vehicles_collection.rb'


describe "Aircraft" do

  context "when used as civilian aircraft" do
    before do
      @a = Allvehicles::Aircraft.new(3, "Lockheed", "Stealth")
    end

    it "sets weapons? to false" do
      expect( @a.weapons?).to eq false
    end

    it "sets electric to false" do
      expect( @a.electric?).to eq false
    end

    it "sets manufacturer to Lockheed" do
      expect( @a.manufacturer).to eq "Lockheed"
    end

    it "sets model_num to stealth" do
      expect( @a.model_num).to eq "Stealth"
    end
  end

  context "when used as military aircraft" do
    before do
      @a = Allvehicles::Aircraft.new(3, "Lockheed", "Stealth")
    end

    it "sets weapons? to false" do
      expect( @a.weapons?).to eq false
    end

    it "when set weapons to true" do
      @a.weapons = true
      expect( @a.weapons?).to eq true
    end

    it "sets electric to false" do
      expect( @a.electric?).to eq false
    end

    it "sets manufacturer to Lockheed" do
      expect( @a.manufacturer).to eq "Lockheed"
    end

    it "sets model_num to Stealth" do
      expect( @a.model_num).to eq "Stealth"
    end

    it "prints 'This vehicle has weapons capable of shooting. Reload and Shoot.'" do
      @a.weapons = true
      expect( @a.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
    end


    it "when set weapons to true has_weapons returns 'This vehicle has weapons capable of shooting.'" do
      @a.weapons = true
      expect(@a.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
      10.times do @a.reload! end
      expect( @a.remaining_ammo ).to eq 10
      5.times do @a.shoot!  end
      expect( @a.remaining_ammo ).to eq 5
    end

    
  end


end

require 'allvehicles/vehicles_collection.rb'

describe "Helicopter" do

  context "when used as a civilian helicopter" do
    before do
      @h = Allvehicles::Helicopter.new(3, "Lockheed", "Apache")
    end

    it "sets weapons? to false" do
      expect( @h.weapons?).to eq false
    end

    it "sets electric to false" do
      expect( @h.electric?).to eq false
    end

    it "sets manufacturer to Lockheed" do
      expect( @h.manufacturer).to eq "Lockheed"
    end

    it "sets model_num to Apache" do
      expect( @h.model_num).to eq "Apache"
    end
  end

  context "when used as a military helicopter" do
    before do
      @h = Allvehicles::Helicopter.new(3, "Lockheed", "Apache")
    end

    it "sets weapons? to false" do
      expect( @h.weapons?).to eq false
    end

    it "when set weapons to true" do
      @h.weapons = true
      expect( @h.weapons?).to eq true
    end

    it "sets electric to false" do
      expect( @h.electric?).to eq false
    end

    it "sets manufacturer to Lockheed" do
      expect( @h.manufacturer).to eq "Lockheed"
    end

    it "sets model_num to Apache" do
      expect( @h.model_num).to eq "Apache"
    end

    it "prints 'This vehicle has weapons capable of shooting. Reload and Shoot.'" do
      @h.weapons = true
      expect( @h.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
    end


    it "when set weapons to true has_weapons returns 'This vehicle has weapons capable of shooting.'" do
      @h.weapons = true
      expect(@h.has_weapons).to eq 'This vehicle has weapons capable of shooting. Reload and Shoot.'
      10.times do @h.reload! end
      expect( @h.remaining_ammo ).to eq 10
      5.times do @h.shoot!  end
      expect( @h.remaining_ammo ).to eq 5
    end

    
  end


end

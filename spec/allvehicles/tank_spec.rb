require 'allvehicles/vehicles_collection.rb'


describe "Tank" do
  before do
    @t = Allvehicles::Tank.new(4, "Abrams", "M1")
  end
  describe ".new" do
    it "sets weapons and electric power" do
      expect( @t.weapons? ).to eq true
      expect( @t.electric? ).to eq false
      expect( @t.manufacturer ).to eq "Abrams"
      expect( @t.model_num ).to eq "M1"
    end
  end

  describe "#has_weapons" do
    it "can reload and shoot" do
      @t.has_weapons
      expect( @t.remaining_ammo ).to eq 0
      10.times do @t.reload! end
      expect( @t.remaining_ammo ).to eq 10
      @t.shoot!
      expect( @t.remaining_ammo ).to eq 9
    end
  end

end


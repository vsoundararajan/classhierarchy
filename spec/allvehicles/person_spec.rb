require 'allvehicles/vehicles_collection.rb'

describe "Person" do
    before do
      @p = Allvehicles::Person.new(3, "Jane", "Ayre", false)
    end

    it "sets living? to true" do
      expect( @p.living?).to eq true
    end

    it "sets electric to false" do
      expect( @p.electric?).to eq false
    end

    it "sets firstname to Jane" do
      expect( @p.firstname).to eq "Jane"
    end

    it "sets lastname to Ayre" do
      expect( @p.lastname).to eq "Ayre"
    end

    it "sets gender to false to denote female" do
      expect( @p.gender).to eq false
    end

    it "prints 'I am a civilian and peaceful person.' when asked has_weapons" do
      expect( @p.has_weapons).to eq "I am a civilian and peaceful person."
    end
end

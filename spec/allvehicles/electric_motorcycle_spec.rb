require 'allvehicles/vehicles_collection.rb'

describe "Electric Motor Cycle" do

    before do
      @em = Allvehicles::ElectricMotorcycle.new(3, "Zero", "S")
    end

    it "sets weapons? to false" do
      expect( @em.weapons?).to eq false
    end

    it "sets max seats to 1" do
      expect( @em.max_passengers).to eq 1
    end

    it "sets electric to true" do
      expect( @em.electric?).to eq true
    end

    it "sets manufacturer to Zero" do
      expect( @em.manufacturer).to eq "Zero"
    end

    it "sets model_num to S" do
      expect( @em.model_num).to eq "S"
    end


end

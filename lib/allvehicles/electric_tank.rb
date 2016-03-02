require_relative './vehicle.rb'

module Allvehicles
  class ElectricTank < Vehicle

    def initialize(age, manufacturer, model_num)
      super
      @weapons = true
      @electric = true
      @wheelnum = 4
      @max_passengers = 6
    end

  end
end

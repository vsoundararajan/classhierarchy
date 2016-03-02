require_relative './vehicle.rb'

module Allvehicles
  class Motorcycle < Vehicle

    def initialize(age, manufacturer, model_num)
      super
      @wheelnum = 2
      @max_passengers = 1
    end

  end
end

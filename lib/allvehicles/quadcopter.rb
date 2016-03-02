require_relative './aircraft.rb'

module Allvehicles
  class Quadcopter < Aircraft

    def initialize(age, manufacturer, model_num)
      super
      @max_passengers = 0
      @electric = true
    end

  end
end

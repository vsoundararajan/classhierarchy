require_relative './vehicle'

module Allvehicles
  class Tank < Vehicle

    def initialize(age, manufacturer, model_num)
      super
      @weapons = true
      @wheelnum = 10
    end

  end
end

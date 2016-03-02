require_relative './aircraft.rb'

module Allvehicles
  class Helicopter < Aircraft
     attr_accessor :rotors_num
     def initialize(age, manufacturer, model_num)
       super
       @rotors_num = 3
     end
  end
end

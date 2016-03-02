require_relative './locomotive.rb'

module Allvehicles
  class Vehicle < Locomotive

    attr_accessor :wheelnum, :max_passengers, :electric, :age, :manufacturer, :model_num, :weapons

    def initialize(age, manufacturer, model_num)
      @wheelnum = 4
      @weapons = false
      @max_passengers = 4
      @electric = false
      @age = age
      @manufacturer = manufacturer
      @model_num = model_num
    end

    # def wheelnum
    #   @wheelnum
    # end

    def weapons?
      @weapons
    end

    # def max_passengers
    #   @max_passengers
    # end

    def electric?
      @electric
    end

    # def age
    #   @age
    # end

    # def manufacturer
    #   @manufacturer
    # end

    # def model_num
    #   @model_num
    # end

    def weapons=(bool)
      @weapons = bool
      if @weapons
        self.has_weapons
        puts "This vehicle is armed now."
      end
    end
  end
end

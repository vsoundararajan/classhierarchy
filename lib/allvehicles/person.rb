require_relative './locomotive.rb'

module Allvehicles
  class Person < Locomotive

    attr_accessor :wheelnum, :electric, :age, :weapons, :firstname, :lastname, :gender, :living

    def initialize(age, firstname, lastname, gender)
      @firstname = firstname
      @lastname = lastname
      @gender = gender
      @living = true

      @wheelnum = 0
      @weapons = false
      @electric = false
      @age = age
    end

    def weapons?
      @weapons
    end

    def electric?
      @electric
    end

    def living?
      @living
    end
  end
end

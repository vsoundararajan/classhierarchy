module Allvehicles
  class Locomotive

    def has_weapons
      if self.weapons? == true
        @ammo = 0 if @ammo == nil
        @max_ammo = 100
        message = "This vehicle has weapons capable of shooting. #{@ammo > 0 ? 'Shoot' : 'Reload and Shoot.'}"

        def shoot!
          if @ammo > 0
            @ammo -= 1
          else
            puts "No ammo. Reload!"
          end
        end

        def reload!
          if @ammo < @max_ammo
            @ammo += 1
          else @ammo == @max_ammo
            puts "Ammo full. Shoot."
          end
        end

        def remaining_ammo
          @ammo
        end

        def max_ammo
          @max_ammo
        end

      else #self.weapons? == false
        message =  @living ? "I am a civilian and peaceful person." : "This is a civilian vehicle. No weapons." 
      end # end of self.weapon? == true
      message
    end # end of has_weapons method

  end # end of class
end

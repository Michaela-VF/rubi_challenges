
class Thermostat
    def initialize
        @temperature = 20
        @psm = true
        @max_temperature = 25
    end

    def get_temperature
        if @psm
            return "PSM is ON, reached max temperature of #{@temperature}"
        else
            return @temperature
        end
    end

    def up 
        if @psm 
            if @temperature < @max_temperature
                @temperature += 1
            else
                @temperature = @max_temperature
        end
        else
            @temperature += 1
        end
        return @temperature
    end

    def down
        return @temperature -= 1
    end

    def set_power_saving_mode_on
        @psm = true
        return  "PSM is now ON, max temperature is #{@max_temperature}"
    end

    def set_power_saving_mode_off
        @psm = false
        return "PSM is now OFF,there's no set max temperature"
    end

    def reset
        @temperature = 20
    end
end   



thermostat = Thermostat.new
thermostat.set_power_saving_mode_off
p thermostat.get_temperature # should return 20

thermostat.up
thermostat.up
p "the temperature now is: #{thermostat.get_temperature}" # should now return 22

thermostat.down
p "the temperature now is: #{thermostat.get_temperature}" # should now return 21

p thermostat.set_power_saving_mode_on # PSM is now on, max temperature is 25

p thermostat.set_power_saving_mode_off #"PSM is now OFF, max temperature is #{@temperature}"
10.times { thermostat.up }

p thermostat.get_temperature # should be 25 (max reached)-->my version:'PSM is ON, reached max temperature of 25'

p thermostat.set_power_saving_mode_on # PSM is now off, max temperature is no more 25

thermostat.up
p thermostat.get_temperature # should now return 26

thermostat.reset
p thermostat.get_temperature # should be back to 20
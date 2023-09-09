require_relative '/Users/michaela.fouki/Projects/MakersCode/rubi_challenges/lib/thermostat.rb'
require 'rspec'

RSpec.describe 'thermostat class' do
    it "initialises with a temperature set at 20 and psm mode on, 
    it creates and instance thermostat of Thermostat;  
    and when called #get_temperature on thermostat it returns 20." do
    thermostat = Thermostat.new
    thermostat.set_power_saving_mode_off
    expect(thermostat.get_temperature).to eq(20)
    end
    it "initialises with a temperature set at 20;
    it creates and instance thermostat of Thermostat;  
    when called #up method on thermostat twice it increases @temperature by 1 every time; 
    when called #get_temperature on thermostat it returns 22." do
    thermostat = Thermostat.new
    thermostat.up
    thermostat.up
    thermostat.set_power_saving_mode_off
    expect(thermostat.get_temperature).to eq(22)
    end
    it "initialises with a temperature set at 20 and psm mode on;
    it creates and instance thermostat of Thermostat;  
    when called #up method on thermostat twice it increases @temperature by 1 every time;
    when called #down on thermostat once it decreases @temperature by 1; 
    when called #get_temperature on thermostat it returns 21." do
    thermostat = Thermostat.new
    thermostat.up
    thermostat.up
    thermostat.down
    thermostat.set_power_saving_mode_off
    expect(thermostat.get_temperature).to eq(21)
    end
    it  "initialises with a temperature set at 20 and psm mode on;
    it creates and instance thermostat of Thermostat;  
    when called #up method on thermostat twice it increases @temperature by 1 every time;
    when called #down on thermostat once it decreases @temperature by 1; 
    when called #set_power_saving_mode_on on thermostat it returns 
    'PSM is now ON, max temperature is 25';
    when increased temperature by 10 (i.e called #up on thermostat) it returns 
    'PSM is ON, reached max temperature of 25';
    when PSM is OFF  temperature increases to 26 when #up is called on thermostat;
    when #reset is called on thermostat temperature return to 20 its default value." do
    thermostat = Thermostat.new
    thermostat.up
    thermostat.up
    thermostat.down
    @temperature = thermostat.get_temperature
    expect(thermostat.set_power_saving_mode_on).to eq("PSM is now ON, max temperature is 25")
    10.times{thermostat.up}
    expect(thermostat.get_temperature).to eq("PSM is ON, reached max temperature of 25")
    expect(thermostat.set_power_saving_mode_off).to eq("PSM is now OFF,there's no set max temperature")
    thermostat.up
    expect(thermostat.get_temperature).to eq(26)
    thermostat.reset
    expect(thermostat.get_temperature).to eq(20)
    end
end
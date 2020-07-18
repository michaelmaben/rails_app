# composition
class Gadget < ApplicationRecord
  # measures temp
  # measure humidity
  # deprecated
  # composed_of :temperature, mapping: %w(reading celcius)

  def temperature
    Temperature.new(reading)
  end

end

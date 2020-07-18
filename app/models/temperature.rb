class Temperature
  attr_accessor :celcius, :farenheit
  def initialize(reading)
    self.celcius = reading
  end

  def temp_in_cel
    32
  end

  def temp_in_far
    97
  end
end

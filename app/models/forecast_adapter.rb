class ForecastAdapter
  attr_reader :api_call

  def initialize(api_call)
    @api_call = api_call
  end

  def rain?
    api_call.precipProbability > 0.25
  end

  def cold?
    api_call.apparentTemperature < 10
  end

  def mild?
    api_call.apparentTemperature >= 10 && api_call.apparentTemperature <= 20
  end

  def hot?
    api_call.apparentTemperature > 20
  end

  def clear_sky?
    api_call.cloudCover < 0.4
  end
end

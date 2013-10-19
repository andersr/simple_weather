class Forecast

  attr_accessor :today_temp, :yesterday_temp

  def initialize(weather_data_object)

    @today_temp = weather_data_object.get_temp_today
    @yesterday_temp = weather_data_object.get_temp_yesterday
  end

  def generate_forecast
    # determine whether today temp is higher, lower or the same as yesterday
    # return a string based on that result
    if self.today_temp == self.yesterday_temp
      puts "same as yesterday"
    elsif self.today_temp < self.yesterday_temp
      puts "colder than yesterday"
    else
      puts "warmer than yesterday"
    end
  end


end


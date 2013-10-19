class CLI

  def initialize
    @on = true
    self.call
  end

  def on?
    @on
  end

  def call
    while @on == true
      self.command
    end
  end

  def command
    input = command_request
    self.send(input)
  end

  def command_request
    gets.downcase.strip
  end
  
  ### COMMANDS ### 
  # COMMANDS = {
  #   :now => ["", "now", "today"],
  #   :tonight => ["tonight"],
  #   :tomorrow =>  ["tomorrow"],
  #   :next_week => ["next week"]
  #   :help => ["help"]
  # }
  
  def exit
    @on = false
  end

  def tomorrow
    get_data = Forecast.new(WeatherData.new)
    get_data.generate_forecast
    exit
  end

end
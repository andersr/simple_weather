require_relative '../config/environment.rb'

yesterday = Scraper.new('http://www.weather.com/weather/yesterday/New+York+NY+USNY0996:1:US')
# today = Scraper.new('http://www.weather.com/weather/today/New+York+NY+USNY0996:1:US')

# tomorrow = Scraper.new('http://www.weather.com/weather/tomorrow/New+York+NY+USNY0996:1:US')

binding.pry

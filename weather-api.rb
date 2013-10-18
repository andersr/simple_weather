require 'rubygems'
require 'weather-api'

# look up WOEID via http://weather.yahoo.com; enter location by city
# name or zip and WOEID is at end of resulting page url.
#response = Weather.lookup(9830, :celsius)
response = Weather.lookup(2459115, :fahrenheit)

#TODO
# next:  create a bunch of dummy data I can use to create a good command line


# class SimpleWeather 
#   def initialize(woeid)
#     @weather = Weather.lookup(woeid, :fahrenheit)
#   end

#   def title
#     @weather.title
#   end

#   def condition
#     @weather.title
#   end
  
# end

# my_weather = SimpleWeather.new(2459115)

print <<-EOT
#{response.title}
#{response.condition.temp} degrees
#{response.condition.text}
EOT

# print <<-EOT
# #{response.title}
# #{response.condition.temp} degrees
# #{response.condition.text}
# EOT


# -> forecast for tomorrow
# -> slightly colder than yesterday

# -> forecast for seattle wa
# -> much colder than here, and rainier
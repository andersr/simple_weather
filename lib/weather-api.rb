require 'rubygems'
require 'weather-api'

# look up WOEID via http://weather.yahoo.com; enter location by city
# name or zip and WOEID is at end of resulting page url.
#response = Weather.lookup(9830, :celsius)
response = Weather.lookup(2459115, :fahrenheit)


print <<-EOT
#{response.title}
#{response.condition.temp} degrees
#{response.condition.text}
EOT
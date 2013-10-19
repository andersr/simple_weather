require 'forecast_io'
#require 'pry'

ForecastIO.api_key = '2b5cab93f5051c1207517df51d39ceee'

require_relative '../config/cli'
require_relative '../lib/models/scraper'
require_relative '../lib/models/forecast'
require_relative '../lib/weather_data'
require_relative '../lib/models/cli_router'

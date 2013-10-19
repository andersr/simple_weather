 require 'forecast_io'

 ForecastIO.api_key = '2b5cab93f5051c1207517df51d39ceee'

 forecast = ForecastIO.forecast(40.70536,74.013963) # somewhere in Asia/Bishkek
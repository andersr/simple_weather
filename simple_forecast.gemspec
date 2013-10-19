Gem::Specification.new do |s|
  s.name        = 'simple_forecast'
  s.executable  <<'forecast'
  s.version     = "0.0.1"
  s.date        = "2013-10-19"
  s.summary     = "A simple weather forecaster"
  s.description = "A simple weather forecaster"
  s.authors     = ["Anders Ramsay", "Joe O'Conor"]
  s.email       = ["andersr@gmail.com", "joe.oconor@gmail.com"]
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/andersr/simple_weather'
  s.license     = 'MIT'
  #s.require_path = 'config'
  s.add_runtime_dependency 'forecast_io' >= '2.0.0'
  s.post_install_message = <<-MSG
  Thanks for installing Simple Forecast.  Enter 'forecast' to get the current forecast or something like 'forecast tomorrow' for a different forecast.
  MSG

end
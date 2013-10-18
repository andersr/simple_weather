class Scraper
  attr_reader :forecast

  def initialize(scrape_target)
    @scraped_content = Nokogiri::HTML(open(scrape_target))
  end

  def get_temp_yesterday
    @scraped_content.css('p.wx-temp').text.strip[0..1].to_i
  end

   def get_temp_now
    @scraped_content.css('.wx-temperature .temperature-fahrenheit')
  end

  def get_temp_tomorrow
    @scraped_content.css('p.wx-temp').text.strip[0..1].to_i
  end

end
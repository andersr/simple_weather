# # time
# Time.now.utc

# # cron job use whenever gem  
# # apple uses launchd instead - works while computer is sleeping

# every 24.hours do
#   #get weather forecast and store
# end


get temperatures for yesterday, today and tomorrow
just for new york, ny 
allowing for invoking from the command line

# scraper = Scraper.new('http://students.flatironschool.com')
# scraper.get_links_to_student_pages

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


# print <<-EOT
# #{response.title}
# #{response.condition.temp} degrees
# #{response.condition.text}
# EOT


# -> forecast for tomorrow
# -> slightly colder than yesterday

# -> forecast for seattle wa
# -> much colder than here, and rainier

### ARCHIVE
  # def crawl_student_pages(student_page)
  #   url = Nokogiri::HTML(open(student_page))
  # end

  # def get_student_list
  #   students_list = @scraped_content.css('.home-blog ul')
  #   student_list_item = students_list.css('.blog-thumb a')
  # end

  # def get_student_images
  #   image = url.css('.student_pic').first.attributes["src"].value || "image"
  #   #  student_images = @scraped_content.css('.home-blog .blog-thumb .prof-image')
  # end

  # def get_student_names
  #   name = @url.css('.ib_main_header').children[0].text || "name"
  #   # student_names = @scraped_content.css('.home-blog .blog-title .big-comment h3 a').text
  # end

  # def get_links_to_student_pages
  #   student_page_links = @scraped_content.css('.blog-thumb a').collect do |link|
  #     "http://students.flatironschool.com/" + link["href"]
  #   end
  # end

  # def get_student_quotes
  #   quote = url.css('.textwidget h3')[0].children.text.strip || "quote"
  # end
  
  # def get_student_cities
  #   cities =  url.css('h3')[-3].parent.parent.children[5].children.map { |city| city.text.strip || "cities" }.reject(&:empty?)
  # end

  # def get_student_bios
  #   bio = url.css('h3')[1].parent.parent.children[5].text.strip || "bio"
  # end

  # def get_student_personal_projects
  #   personal_projects = url.css('h3')[-4].parent.parent.children[5].text.strip || "projects"
  # end

  # def get_coder_cred
  #   url.css(".coder-cred a").each do |instance|
  #     social_media_array << instance.attributes["href"].value 
  #   end
  # end

  # def get_coder_cred
  #   url.css(".social-icons a").each do |link|
  #     social_media_array << link.attributes["href"].value
  #   end
  # end

  # def get_social_media
  #   social_media_array = social_media_array.uniq || "social media"    
  # end

  # def add_to_db
  #   db = SQLite3::Database.new( "test.db" )
  #   db.execute(" create table if not exists student (
  #   student_name varchar2(30),
  #   image varchar2(30),
  #   quote text,
  #   biography text
  #   )
  #   ;") 

  #   db.execute( "insert into student values ( ?, ?,?,? )", 
  #   *student_name,*image,*quote, *biography )
  # end

  # # weather = Scraper.new('http://www.weather.com/weather/pastweather/hourly/USNY0996')

# # puts weather.yesterday

# forecast = Forecast.new(40.70536,74.013963)

#binding.pry


# forecast tomorrow
# compare tomorrow
# example: today = 64, tomorrow = 72 => a bit warmer than today

# command == "tomorrow"
# 1. if if tomorrow == today => "same as today"
# 2. if tomorrow > today => "warmer than today"
# 3. if tomorrow < today => "colder than today"

# 4. get the difference size value.
# 5. if the difference size value is < 3: "a smidge colder/warmer"
# 6. if between 3 and 8: a bit colder
# 7. if between 8 and 12 a lot colder
# 8. if greater than 12: way colder than today

# if not understand: "I have no idea what you just said, but I'm sure the forecast is excellent" or "Sorry, I didn't understand that."

  # def get_forecast
  #   if @tomorrow == @today
  #     "same as today"
  #   elsif @tomorrow > @today
        

  # end

    # it "can return a mock reply to a weather forecast request" do
  #   @cli.command("forecast for tomorrow")
  #   @cli.command.should eq "a little warmer than today"
  # end

  # it "exits after providing a weather forecast" do
  #       @cli.command("exit")
  #       @cli.on.should eq false
  # end
class CLI
  attr_accessor :songs
  def initialize
    @songs = Song.all
    @on = true
    call
  end

  def call
    while @on == true
      self.help
    end
  end

  def help
    puts "Enter list, help, exit or play"
    self.command_request
  end

  def command(input)
    case input
      when "list"
        list
      when "exit"
        exit
      when "play"
        play
      end
  end

  def list
    i = 1
    puts "\n"
    Artist.all.each do |artist|
      artist.songs.each do |song|
        puts "#{i}. #{artist.name} - #{song.name} - #{song.genre.name}"
        i += 1
      end
    end
    puts "\n"
  end

  def play
   puts "Please enter a song name or number. \n"
   input = gets.downcase.strip
   result = 0
      if input.to_i > 0
        i = input.to_i
        puts "\nNow playing #{Song.all[i].name} by #{Song.all[i].artist.name}.\n\n"
      elsif input.to_i == 0
          Song.all.each do |x|
           if x.name.downcase == input
            result = x
          end
        end
        puts "\nNow playing #{result.name} by #{result.artist.name}.\n\n"
      else
        puts "Invalid Input"
    end
  end

  def command_request
    self.command(gets.downcase.strip)
  end

end

x = LibraryParser.new
x.get_and_split_array
CLI.new
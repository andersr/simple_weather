class CLI

  COMMANDS = {
    :now => ["", "now", "today"],
    :tonight => ["tonight"],
    :tomorrow =>  ["tomorrow"],
    :next_week => ["next week"]
    :help => ["help"]
  }

  def initialize
    @on = true
    # puts "[initialized]"
  end

  def on?
    @on
  end

  def call
    while @on == true
      self.command
    end
  end

  def command(input)
    # look up in commands
    case input
      when "forecast for tomorrow"
        "a little warmer than today"
        exit
      end
  end

  def command_request
    self.command(gets.downcase.strip)
  end

  def exit
    @on = false
  end

end
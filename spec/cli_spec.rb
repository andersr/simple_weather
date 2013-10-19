require_relative '../config/environment.rb'

describe "command line interface for the weather app" do

  before :each do
    @cli = CLI.new
  end

  it "can be initialized" do 
    @cli.on?.should eq true
  end

  it "can accept a forecast command with no attributes"

   it "can accept a forecast command with no attributes"

end
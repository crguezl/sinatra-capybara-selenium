require_relative '../my_sinatra_app.rb' # this load the file you are testing
require 'spec_helper.rb' # It will load the configuration you set in spec_helper.rb

describe 'sinatra app home page' do 
  it "should load the home page" do # the first test
    get '/' # you are visiting the home page
    last_response.should be_ok # it will true if the home page load successfully
  end
end

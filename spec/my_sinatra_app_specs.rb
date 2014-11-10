require_relative '../my_sinatra_app.rb' 
require 'spec_helper.rb' 

describe 'make API call to load path' do 
  it "should load the home page" do
    visit 'http://0.0.0.0:4567'
    expect(page).to have_content("Sinatra")
  end
end

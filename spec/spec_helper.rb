require 'capybara' # loading capybara
include Capybara::DSL 

Capybara.default_driver = :selenium 

def app
  Sinatra::Application 
end

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = :random
end

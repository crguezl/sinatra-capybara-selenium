require 'capybara' # loading capybara
include Capybara::DSL 
# It contain all the methods you use for writing test. 

=begin
it will tell capybara to use selenium. It should be noted that  
By default, Capybara uses the :rack_test driver, which is fast but
limited: it does not support JavaScript, nor is it able to access HTTP 
resources outside of your Rack application, such as remote
APIs and OAuth services.
=end
Capybara.default_driver = :selenium 

def app
  Sinatra::Application 
end

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
#  config.expect_with :rspec do |expectations|
#    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
#  end
#
#  config.mock_with :rspec do |mocks|
#    mocks.verify_partial_doubles = true
#  end

  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = :random

=begin

  config.disable_monkey_patching!

  config.warnings = true

  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10


  Kernel.srand config.seed
=end
end

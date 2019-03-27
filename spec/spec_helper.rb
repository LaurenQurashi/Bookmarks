# at the top of spec/spec_helper.rb

# Set the environment to "test"
ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

# Bring in the contents of the `app.rb` file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'setup_test_database'

# Tell Capybara to talk to BookmarkManager
Capybara.app = BookmarkManager

RSpec.configure do |config|

  config.before(:each) do
    setup_test_database
  end
# This calls our method before each test in our sort of spec helper file.
end

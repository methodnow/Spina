require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require "minitest/reporters"

Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

# Load fixtures from the engine
ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)

class ActiveSupport::TestCase 
  fixtures :all
end
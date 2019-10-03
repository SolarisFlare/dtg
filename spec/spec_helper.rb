# Coveralls Configuration
if ENV['TRAVIS']
  # When running in Travis, report coverage stats to Coveralls.
  require 'coveralls'
  Coveralls.wear!
end

require "bundler/setup"
require "dtg"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

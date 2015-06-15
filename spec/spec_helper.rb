require 'capybara/rspec'

RSpec.configure do |config|
  config.include Capybara::DSL

end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'http://0.0.0.0:3000/' # localhost(rails s)
end

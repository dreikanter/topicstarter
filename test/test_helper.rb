ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
require 'rails/test_help'
require 'nulldb_rspec'

class ActiveSupport::TestCase
  fixtures :all
  ActiveRecord::Base.establish_connection :adapter => :nulldb
end

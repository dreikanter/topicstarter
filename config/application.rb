require_relative "boot"

# SEE: https://github.com/rails/rails/blob/5-2-stable/railties/lib/rails/all.rb

require "rails"
require "active_storage/engine"
require "action_controller/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "active_job/railtie"
require "rails/test_unit/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Topicstarter
  class Application < Rails::Application
    config.autoload_paths += %w[app lib].map { |p| Rails.root.join p }
    config.action_cable.mount_path = "/cable"

    config.generators do |g|
      g.test_framework :minitest, spec: false, fixture: false
      g.helper false
      g.decorator false
      g.assets false
      g.stylesheets false
      g.javascripts false
      g.view_specs false
      g.helper_specs false
      g.skip_routes true
    end
  end
end

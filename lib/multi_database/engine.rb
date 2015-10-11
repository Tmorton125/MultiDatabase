module MultiDatabase
  class Engine < ::Rails::Engine
    isolate_namespace MultiDatabase

    initializer :assets do |config|
    	Rails.application.config.assets.precompile += %w{ connections.css }
    	Rails.application.config.assets.precompile += %w{ connections.js }
    	Rails.application.config.assets.paths << root.join("app", "assets", "images")
    end
  end
end

module Spree
  module BloggingSpree
    # Singleton class to access the shipping configuration object (BloggingSpreeConfiguration.first by default) and it's preferences.
    #
    # Usage:
    #   Spree::BloggingSpree::Config[:foo]                  # Returns the foo preference
    #   Spree::BloggingSpree::Config[]                      # Returns a Hash with all the tax preferences
    #   Spree::BloggingSpree::Config.instance               # Returns the configuration object (BloggingSpreeConfiguration.first)
    #   Spree::BloggingSpree::Config.set(preferences_hash)  # Set the active shipping preferences as especified in +preference_hash+
    class Config
      include Singleton
      include PreferenceAccess

      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          BloggingSpreeConfiguration.find_or_create_by_name("Default blogging_spree configuration")
        end
      end
    end
  end
end

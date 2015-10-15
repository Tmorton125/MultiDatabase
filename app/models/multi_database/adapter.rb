module MultiDatabase
  class Adapter < ActiveRecord::Base
    has_many :database_connections, class_name: "MultiDatabase::DatabaseConnection"
  	# This holds list of supported Rails Database Adapters
  end
end

module MultiDatabase
  class Adapter < ActiveRecord::Base
    has_many :database_connections, class_name: "MultiDatabase::DatabaseConnection"
  	# This holds list of supported Rails Database Adapters

  	#defining scopes
  	scope :mysql_adapter, -> { where(adapter: 'mysql2') }
  	scope :sqlite_adapter, -> { where(adapter: 'sqlite3') }
  end
end

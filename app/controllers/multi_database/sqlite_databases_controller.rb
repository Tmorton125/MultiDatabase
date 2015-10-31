require_dependency "multi_database/application_controller"

module MultiDatabase
  class SqliteDatabasesController < ApplicationController

  	def index
  		@sqlite_schemas = MultiDatabase::Adapter.sqlite_adapter.first.database_connections
  	end
  end
end

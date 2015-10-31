require_dependency "multi_database/application_controller"

module MultiDatabase
  class MysqlDatabasesController < ApplicationController

  	def index
       @mysql_schemas = MultiDatabase::Adapter.mysql_adapter.first.database_connections
  	end
  	
  end
end

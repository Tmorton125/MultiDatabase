require_dependency "multi_database/application_controller"

module MultiDatabase
  class ConnectionsController < ApplicationController

  	def index
  		@connections = MultiDatabase::DatabaseConnection.all
  	end
  end
end

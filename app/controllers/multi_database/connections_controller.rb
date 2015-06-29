require_dependency "multi_database/application_controller"

module MultiDatabase
  class ConnectionsController < ApplicationController

  	def index
  		@connections = MultiDatabase::DatabaseConnection.all
  	end

  	def new
  		@connection = MultiDatabase::DatabaseConnection.new
  	end

	def create
		# Params contains the message object so create new instance of object
		# on save successful save redirect to show action otherwise re-render new form with error messages

        #TODO IMPLEMENT Create for now just redirect back to index

		redirect_to action: :index
	end

  end
end

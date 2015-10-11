require_dependency "multi_database/application_controller"

module MultiDatabase
  class ConnectionsController < ApplicationController

    
  	def index
  		@connections = MultiDatabase::DatabaseConnection.all
  	end

    def show
      @connection = MultiDabase::DatabaseConnection.where(id: params[:id]).first
    end

  	def new
  		@connection = MultiDatabase::DatabaseConnection.new
  	end

	  def create
		  # Params contains the message object so create new instance of object
		  # on save successful save redirect to show action otherwise re-render new form with error messages

      #TODO IMPLEMENT Create for now just redirect back to index
      @connection = MultiDatabase::DatabaseConnection.new(database_params)

      if @connection.save
        redirect_to @connection
      else
        render :new
      end
	  end

private
    # Include any private methods here that won't be accessible through routes
    def database_params
      params.require(:database_connection).permit(:connection_name, :host, :database_name, :username, :password)
    end

  end
end

require_dependency "multi_database/application_controller"

module MultiDatabase
  class ConnectionsController < ApplicationController

    
  	def index
  		@connections = MultiDatabase::DatabaseConnection.all
  	end

    def show
      @connection = MultiDatabase::DatabaseConnection.where(id: params[:id]).first
    end

  	def new
  		@connection = MultiDatabase::DatabaseConnection.new
      @adapters = MultiDatabase::Adapter.all
  	end

	  def create
		  # Params contains the message object so create new instance of object
		  # on save successful save redirect to show action otherwise re-render new form with error messages
      @connection = MultiDatabase::DatabaseConnection.new(database_params)
      @adapters = MultiDatabase::Adapter.all

      if @connection.save
        redirect_to multidatabase.connection_url(@connection)
      else
        render :new
      end
	  end

    def edit
      @connection = MultiDatabase::DatabaseConnection.where(id: params[:id]).first
      @adapters = MultiDatabase::Adapter.all

      if @connection.blank?
        flash[:error] = "Unable to find requested Database Connection"
        redirect_to action: :index
      end
    end

    def update
      @connection = MultiDatabase::DatabaseConnection.where(id: params[:id]).first
      @adapters = MultiDatabase::Adapter.all

      if @connection.update(edit_params)
        redirect_to action: :show, id: @connection
      else
        render 'edit'
      end

    end

    def destroy
      @connection = MultiDatabase::DatabaseConnection.where(id: params[:id]).first

      if !@connection.blank? and @connection.destroy
          flash[:success] = "Database Connnection was removed from the system sucessfully"
          redirect_to  action: :index
      else
        flash[:error] = "Unable to delete the requested Database Connection"
        redirect_to action: :show, id: @connection
      end
    end

private
    # Include any private methods here that won't be accessible through routes
    def database_params
      params.require(:database_connection).permit(:connection_name, :host, :database_name, :username, :password, :adapter_id)
    end

    def edit_params
      params.require(:database_connection).permit(:host, :database_name, :username, :password, :adapter_id)
    end

  end
end

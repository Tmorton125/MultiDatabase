require "multi_database/engine"

module MultiDatabase


  class Connector < ActiveRecord::Base
     
     self.abstract_class = true


     def self.connect_to( connection_name )

     	# for now just return the name of the database
     	# TODO Database lookup and then do connections
     
        logger.info("Establishing connection to database")

     	begin
     	
     		information = DatabaseConnection.where(connection_name: connection_name).first
     		unless information.blank?

     			# TODO establish connection to the new database here

     		else
     			logger.warn("Unable to find connection information at this time please define configuration for #{connection_name}")
     		end
     	rescue
     		logger.error("Unable to find connection information")
     	end
     end

     # Next Load the connection information from the database Initially will base the information off a holding name
  end

end

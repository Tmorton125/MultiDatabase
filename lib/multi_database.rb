require "multi_database/engine"

module MultiDatabase


  class Connector < ActiveRecord::Base
     
     self.abstract_class = true


     # Next Load the connection information from the database Initially will base the information off a holding name
  end

end

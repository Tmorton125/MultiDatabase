module MultiDatabase
  class DatabaseConnection < ActiveRecord::Base

    # attributes
  	# :id
  	# :connection_name
  	# :database_name
  	# :host
  	# :username
  	# :password
  	# :timeout
  	# :active

    validates :connection_name, presence: true, uniqueness: true
    validates :database_name, presence: true
    validates :host, presence: true


  end
end

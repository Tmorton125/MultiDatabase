module MultiDatabase
  class DatabaseConnection < ActiveRecord::Base

    # attributes
  	# :id
  	# :connection_name
    # :adapter_id
  	# :database_name
  	# :host
  	# :username
  	# :password
  	# :timeout
  	# :active

    belongs_to :adapter, class_name: "MultiDatabase::Adapter"

    validates :connection_name, presence: true, uniqueness: true
    validates :database_name, presence: true
    validates :host, presence: true


  end
end

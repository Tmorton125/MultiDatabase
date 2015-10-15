class AddAdapterReferenceToConnectionTable < ActiveRecord::Migration
  def change
  	add_reference :multi_database_database_connections, :adapter, index: true
  end
end

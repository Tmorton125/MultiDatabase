class CreateMultiDatabaseDatabaseConnections < ActiveRecord::Migration
  def change
    create_table :multi_database_database_connections do |t|

      t.string :connection_name
      t.string :database_name
      t.string :host
      t.string :username
      t.string :password
      t.integer :timeout
      t.boolean :active

      t.timestamps null: false
      
    end
  end
end

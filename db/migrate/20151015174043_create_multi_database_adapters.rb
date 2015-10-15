class CreateMultiDatabaseAdapters < ActiveRecord::Migration
  def change
    create_table :multi_database_adapters do |t|
      t.string :adapter, null: false, unique: true
      t.timestamps null: false
    end

    add_index :multi_database_adapters, :adapter
  end
end

class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.column "name",        :string, :limit => 10, :default => "", :null => false
      t.column "description", :string, :limit => 45, :default => "", :null => false

      t.timestamps
    end
  end
end

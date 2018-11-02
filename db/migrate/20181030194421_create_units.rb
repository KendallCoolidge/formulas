class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.column "name", :string, :limit => 15, :default => "", :null => false
      t.column "wtorvolume", :string, :limit => 10, :default => "", :null => false

      t.timestamps
    end
  end
end

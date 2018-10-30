class CreateBatchUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :batch_units do |t|
      t.column "name", :string, :limit => 50, :default => "", :null => false
      t.column "wtorvolume", :string, :limit => 10, :default => "", :null => false

      t.timestamps null: false
    end
  end
end

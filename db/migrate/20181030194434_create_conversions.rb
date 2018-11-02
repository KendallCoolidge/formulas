class CreateConversions < ActiveRecord::Migration[5.2]
  def change
    create_table :conversions do |t|
      t.column "from",   :integer, :default => 0,   :null => false
      t.column "to",     :integer, :default => 0,   :null => false
      t.column "factor", :float,   :default => 1.0, :null => false

      t.timestamps
    end
  end
end

class CreateBaseIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :base_ingredients do |t|
      t.column "name",        :string,  :limit => 30,                               :default => "",  :null => false
      t.column "butterfat",   :decimal,               :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "msnf",        :decimal,               :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "sucrose",     :decimal,               :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "glucose",     :decimal,               :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "rounder_id",  :integer,                                             :default => 0,   :null => false
      t.column "location_id", :integer,                                             :default => 0,   :null => false
      t.column "position",    :integer,                                             :default => 0,   :null => false

      t.timestamps null: false 
    end
  end
end

class CreateFormulaDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :formula_details do |t|
      t.column "formula_id",    :integer,                               :default => 0,   :null => false
      t.column "ingredient_id", :integer,                               :default => 0,   :null => false
      t.column "usage",         :decimal, :precision => 7, :scale => 2, :default => 0.0, :null => false
      t.column "unit_id",       :integer,                               :default => 0,   :null => false
      t.column "rounder_id",    :integer,                               :default => 0,   :null => false
      t.column "position",      :integer,                               :default => 0,   :null => false

      t.timestamps null: false
    end
  end
end

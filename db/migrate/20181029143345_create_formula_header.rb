class CreateFormulaHeader < ActiveRecord::Migration[5.2]
  def change
    create_table :formula_headers do |t|
      t.column "name",                :string,                                :default => "",  :null => false
      t.column "description",         :string,                                :default => "",  :null => false
      t.column "butterfat",           :decimal, :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "milk_solids_non_fat", :decimal, :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "sucrose",             :decimal, :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "glucose",             :decimal, :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "percent_variable",    :decimal, :precision => 5, :scale => 2, :default => 0.0, :null => false
      t.column "weight_per_unit",     :decimal, :precision => 6, :scale => 3, :default => 0.0, :null => false
      t.column "unit_id",             :integer,                               :default => 0,   :null => false
      t.column "normal_batch_size",   :decimal, :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.column "category_id",         :integer,                               :default => 0,   :null => false
      t.column "batch_unit_id",       :integer,                               :default => 0,   :null => false
      t.column "position",            :integer,                               :default => 0,   :null => false

      t.timestamps null: false
    end
  end
end

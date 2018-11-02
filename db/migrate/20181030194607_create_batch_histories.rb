class CreateBatchHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :batch_histories do |t|
      t.column "created_at",  :datetime
      t.column "name",        :string,                                 :default => "",  :null => false
      t.column "description", :string,                                 :default => "",  :null => false
      t.column "batch_size",  :decimal,  :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.column "unit",        :string,                                 :default => "",  :null => false
      t.column "weight_unit", :string,                                 :default => "",  :null => false
      t.column "created_by",  :string,                                 :default => "",  :null => false

      t.timestamps
    end
  end
end

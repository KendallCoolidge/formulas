class CreateBatchHistoryVariables < ActiveRecord::Migration[5.2]
  def change
    create_table :batch_history_variables do |t|
      t.column "batch_history_id", :integer
      t.column "name",             :string,                                 :default => "",  :null => false
      t.column "location",         :string,                                 :default => "",  :null => false
      t.column "amount",           :decimal, :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.column "unit",             :string,                                 :default => "",  :null => false
      t.column "position",         :integer,                                :default => 0,   :null => false

      t.timestamps
    end
  end
end

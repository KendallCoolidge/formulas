class CreateRounders < ActiveRecord::Migration[5.2]
  def change
    create_table :rounders do |t|
      t.column "name", :decimal, :precision => 7, :scale => 4, :default => 0.0, :null => false

      t.timestamps
    end
  end
end

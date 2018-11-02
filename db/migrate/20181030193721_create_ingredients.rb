class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.column "name", :string, :limit => 45, :default => "", :null => false
      
      t.timestamps
    end
  end
end

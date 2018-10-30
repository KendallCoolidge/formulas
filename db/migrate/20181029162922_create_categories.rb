class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
            t.column "name", :string, :limit => 50, :default => "", :null => false

            t.timestamps null: false
    end
  end
end

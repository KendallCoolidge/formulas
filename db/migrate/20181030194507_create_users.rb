class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column "username",        :string,               :default => "", :null => false
      t.column "hashed_password", :string, :limit => 40, :default => "", :null => false
      t.column "first_name",      :string,               :default => "", :null => false
      t.column "last_name",       :string,               :default => "", :null => false
      t.column "email",           :string,               :default => "", :null => false
      t.column "time_zone",       :string,               :default => "International Date Line West", :null => false

      t.timestamps
    end
  end
end

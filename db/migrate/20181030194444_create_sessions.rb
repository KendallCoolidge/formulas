class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.column "session_id", :string
      t.column "data",       :text
      t.column "updated_at", :datetime

      t.timestamps
    end
  end
end

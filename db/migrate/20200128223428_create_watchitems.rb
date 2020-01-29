class CreateWatchitems < ActiveRecord::Migration[6.0]
  def change
    create_table :watchitems do |t|
      t.integer :user_id
      t.integer :currency_id

      t.timestamps
    end
  end
end

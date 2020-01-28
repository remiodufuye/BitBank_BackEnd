class CreateCurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :currencies do |t|
      t.string :logo
      t.integer :currency_id
      t.string :name
      t.string :symbol
      t.string :slug
      t.string :description

      t.timestamps
    end
  end
end

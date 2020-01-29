class CreateCurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :currencies do |t|
      
      t.integer :currency_id
      t.string :coin_name
      t.string :coin_fullname
      t.string :image_url
      t.string :second_url 
      t.string :coin_symbol
      t.float :coin_price 

      t.timestamps
    end
  end
end 



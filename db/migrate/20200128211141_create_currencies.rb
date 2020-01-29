class CreateCurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :currencies do |t|
      
      t.integer :currency_id
      t.string :website 
      t.string :technical_doc
      t.string :twitter
      t.string :reddit 
      t.string :message_board
      t.string :coin_market_cap_explorer
      t.string :blockchain_info_explorer
      t.string :source_code
      t.string :logo 
      t.string :name
      t.string :symbol 
      t.string :slug
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end 



class CreateCurrencies < ActiveRecord::Migration[6.0]
    def change
      create_table :currencies do |t|

        t.integer :coin_id
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
  
        t.integer :max_supply
        t.integer :circulating_supply
        t.integer :total_supply
        t.float :price 
        t.float :volume 
        t.float :percentage_change_1h
        t.float :percentage_change_24h
        t.float :percentage_change_7d
        t.float :market_cap
  
  
        t.timestamps
      end
    end 
end


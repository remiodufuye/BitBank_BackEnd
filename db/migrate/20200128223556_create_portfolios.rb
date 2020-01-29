class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.integer :user_id
      t.integer :currency_id
      t.integer :quantity

      t.timestamps
    end
  end
end

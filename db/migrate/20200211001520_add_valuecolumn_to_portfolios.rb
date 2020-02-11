class AddValuecolumnToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :value, :bigint
  end
end

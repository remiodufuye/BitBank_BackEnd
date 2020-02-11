class RenameQuantityToAmount < ActiveRecord::Migration[6.0]
  def change
  rename_column :portfolios, :quantity, :amount
  end
end

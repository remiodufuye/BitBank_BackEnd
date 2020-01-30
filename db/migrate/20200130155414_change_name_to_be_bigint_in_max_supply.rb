class ChangeNameToBeBigintInMaxSupply < ActiveRecord::Migration[6.0]
  def up
    change_column :currencies, :max_supply, :bigint
    change_column :currencies, :circulating_supply, :bigint
    change_column :currencies, :total_supply, :bigint
  end

  def down
    change_column :currencies, :max_supply, :int
    change_column :currencies, :circulating_supply, :int
    change_column :currencies, :total_supply, :int
  end
end

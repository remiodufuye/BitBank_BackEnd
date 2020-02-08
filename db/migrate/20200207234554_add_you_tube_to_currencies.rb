class AddYouTubeToCurrencies < ActiveRecord::Migration[6.0]
  def change
    add_column :currencies, :youtube_url, :string
  end
end

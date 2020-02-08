class UpdateYoutubeUrlToValue < ActiveRecord::Migration[6.0]

  def up
    Currency.update_all youtube_url:'https://www.youtube.com/embed/Pl8OlkkwRpc'
  end

  def down
  end 

end



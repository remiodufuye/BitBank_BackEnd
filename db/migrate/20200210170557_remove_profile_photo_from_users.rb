class RemoveProfilePhotoFromUsers < ActiveRecord::Migration[6.0]
  
  def up
    remove_column :users, :profile_photo
  end
  
  def down
    add_column :users, :profile_photo, :string
  end

end


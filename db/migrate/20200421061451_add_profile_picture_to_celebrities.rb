class AddProfilePictureToCelebrities < ActiveRecord::Migration[6.0]
  def change
    add_column :celebrities, :profile_picture, :string
  end
end

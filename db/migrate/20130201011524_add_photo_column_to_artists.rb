class AddPhotoColumnToArtists < ActiveRecord::Migration
  def change
    add_column(:artists, :photo, :binary)
  end
end

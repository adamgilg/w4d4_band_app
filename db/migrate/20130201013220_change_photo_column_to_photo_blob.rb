class ChangePhotoColumnToPhotoBlob < ActiveRecord::Migration
  def change
    rename_column :artists, :photo, :photo_blob
  end
end

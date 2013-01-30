class CreateArtistsTable < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :band_id

      t.timestamps
    end
  end
end

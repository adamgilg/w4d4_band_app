class CreateSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :author_id

      t.timestamps
    end
  end
end

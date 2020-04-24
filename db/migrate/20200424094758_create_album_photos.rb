class CreateAlbumPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :album_photos do |t|
      t.references :photo, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
    add_index :album_photos, [:photo_id, :album_id], unique: true

  end
end

class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :farm
      t.integer :server
      t.string :flickr_id
      t.string :secret

      t.timestamps
    end
  end
end

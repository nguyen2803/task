class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :albums, [:user_id, :created_at]

  end
end

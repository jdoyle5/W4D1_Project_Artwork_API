class ArtworkAddIndex < ActiveRecord::Migration[5.1]
  def change
    remove_column :artworks, :artist_id
    add_column :artworks, :artist_id, :string, null: false, unique: true
    remove_column :artworks, :title
    add_column :artworks, :title, :string, null: false, unique: true
    add_index :artworks, :artist_id, unique: true
  end
end

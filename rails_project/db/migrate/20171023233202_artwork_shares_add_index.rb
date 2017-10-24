class ArtworkSharesAddIndex < ActiveRecord::Migration[5.1]
  def change
    remove_column :artwork_shares, :artwork_id
    add_column :artwork_shares, :artwork_id, :string, null: false, unique: true
    remove_column :artwork_shares, :viewer_id
    add_column :artwork_shares, :viewer_id, :string, null: false, unique: true
    add_index :artwork_shares, :viewer_id, unique: true
    add_index :artwork_shares, :artwork_id, unique: true
  end
end

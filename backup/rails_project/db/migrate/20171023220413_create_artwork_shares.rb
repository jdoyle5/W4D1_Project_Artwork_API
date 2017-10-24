class CreateArtworkShares < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_shares do |t|
      t.integer :artwork_id, null: false, uniqueness: true
      t.integer :viewer_id, null: false, uniqueness: true


      t.timestamps
    end
  end
end

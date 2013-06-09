class CreateProfilePictures < ActiveRecord::Migration
  def change
    create_table :profile_pictures do |t|
      t.string :image
      t.references :card

      t.timestamps
    end
    add_index :profile_pictures, :card_id
  end
end

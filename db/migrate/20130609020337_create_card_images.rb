class CreateCardImages < ActiveRecord::Migration
  def change
    create_table :card_images do |t|
      t.string :image
      t.references :card
      t.boolean :active

      t.timestamps
    end
    add_index :card_images, :card_id
  end
end

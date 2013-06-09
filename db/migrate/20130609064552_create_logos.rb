class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :image
      t.references :card

      t.timestamps
    end
    add_index :logos, :card_id
  end
end

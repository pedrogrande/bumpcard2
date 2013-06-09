class CreateCardColors < ActiveRecord::Migration
  def change
    create_table :card_colors do |t|
      t.string :card_color, :default => '#FFFFFF'
      t.references :card
      t.boolean :active

      t.timestamps
    end
    add_index :card_colors, :card_id
  end
end

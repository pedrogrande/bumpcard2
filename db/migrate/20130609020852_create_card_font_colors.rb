class CreateCardFontColors < ActiveRecord::Migration
  def change
    create_table :card_font_colors do |t|
      t.string :card_font_color, :default => '#000000'
      t.references :card
      t.boolean :active

      t.timestamps
    end
    add_index :card_font_colors, :card_id
  end
end

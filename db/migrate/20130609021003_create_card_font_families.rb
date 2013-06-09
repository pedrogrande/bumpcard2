class CreateCardFontFamilies < ActiveRecord::Migration
  def change
    create_table :card_font_families do |t|
      t.string :card_font_family, :default => 'Arial'
      t.references :card
      t.boolean :active

      t.timestamps
    end
    add_index :card_font_families, :card_id
  end
end

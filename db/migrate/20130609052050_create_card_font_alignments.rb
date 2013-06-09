class CreateCardFontAlignments < ActiveRecord::Migration
  def change
    create_table :card_font_alignments do |t|
      t.string :alignment, :default => 'left'
      t.references :card

      t.timestamps
    end
    add_index :card_font_alignments, :card_id
  end
end

class CreateCardTexts < ActiveRecord::Migration
  def change
    create_table :card_texts do |t|
      t.text :content, :limit => 255
      t.references :card
      t.boolean :active

      t.timestamps
    end
    add_index :card_texts, :card_id
  end
end

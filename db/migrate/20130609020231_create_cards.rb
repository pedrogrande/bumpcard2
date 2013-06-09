class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :user
      t.boolean :card_image
      t.boolean :card_color
      t.boolean :card_font_color
      t.boolean :card_font_family

      t.timestamps
    end
    add_index :cards, :user_id
  end
end

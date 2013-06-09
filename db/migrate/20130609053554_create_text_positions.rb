class CreateTextPositions < ActiveRecord::Migration
  def change
    create_table :text_positions do |t|
      t.string :position, :default => 'top'

      t.timestamps
    end
  end
end

class CreateTextSizes < ActiveRecord::Migration
  def change
    create_table :text_sizes do |t|
      t.string :size, :default => "Medium"

      t.timestamps
    end
  end
end

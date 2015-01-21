class CreateScrubs < ActiveRecord::Migration
  def change
    create_table :scrubs do |t|
      t.string :name
      t.string :file_type
      t.integer :size

      t.timestamps
    end
  end
end

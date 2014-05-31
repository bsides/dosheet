class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :level
      t.text :description
      t.references :power, index: true

      t.timestamps
    end
  end
end

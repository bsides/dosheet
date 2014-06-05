class CreateListValues < ActiveRecord::Migration
  def change
    create_table :list_values do |t|
      t.string :text
      t.references :list, index: true

      t.timestamps
    end
  end
end

class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.string :name
      #t.references :group, index: true

      t.timestamps
    end
  end
end

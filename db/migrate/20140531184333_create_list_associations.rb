class CreateListAssociations < ActiveRecord::Migration
  def change
    create_table :list_associations, id: false do |t|
      t.integer :first_list_id
      t.integer :second_list_id
    end
  end
end

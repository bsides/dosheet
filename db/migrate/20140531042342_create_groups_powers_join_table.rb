class CreateGroupsPowersJoinTable < ActiveRecord::Migration
  def change
    create_table :groups_powers, id: false do |t|
      t.references :group
      t.references :power
    end
  end
end

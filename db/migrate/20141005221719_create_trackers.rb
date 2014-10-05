class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :name
      t.string :producer
      t.string :uid
      t.belongs_to :user, index: true

      t.timestamps
    end
    add_index :trackers, :name
    add_index :trackers, :producer
    add_index :trackers, :uid
  end
end

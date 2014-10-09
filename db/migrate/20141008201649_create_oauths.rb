class CreateOauths < ActiveRecord::Migration
  def change
    create_table :oauths do |t|
      t.string :uid
      t.string :provider
      t.belongs_to :user, index: true
      t.string :auth_data

      t.timestamps
    end
    add_index :oauths, :uid
    add_index :oauths, :provider
  end
end

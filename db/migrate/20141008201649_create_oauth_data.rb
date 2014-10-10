class CreateOauthData < ActiveRecord::Migration
  def change
    create_table :oauth_data do |t|
      t.string :uid
      t.string :provider
      t.belongs_to :user, index: true
      t.string :auth_data

      t.timestamps
    end
    add_index :oauth_data, :uid
    add_index :oauth_data, :provider
  end
end

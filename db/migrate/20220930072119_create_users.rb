class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :users, id: :uuid do |t|
      t.references :group, null: false, foreign_key: true
      t.string :user_name
      t.text :password
      t.string :nickname
      t.integer :points

      t.timestamps
    end
  end
end

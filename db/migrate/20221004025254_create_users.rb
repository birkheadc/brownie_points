class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :users, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :user_name
      t.string :password_digest
      t.string :nick_name
      t.integer :points
      t.uuid :partner_id

      t.timestamps
    end
    add_index :users, :user_name, unique: true
  end
end

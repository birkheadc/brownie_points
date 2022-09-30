class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :groups, id: :uuid do |t|
      t.timestamps
    end
  end
end

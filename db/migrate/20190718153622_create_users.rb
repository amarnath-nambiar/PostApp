class CreateUsers < ActiveRecord::Migration[5.2]
  def self.up
    create_table :users do |t|
      t.string :first_name, null: false, default: ""
      t.string :last_name
      t.string :user_name, unique: true
      t.text :bio
      t.string :phone, unique: true
      t.string :education
      t.string :position
      t.string :organization
      t.boolean :is_admin, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

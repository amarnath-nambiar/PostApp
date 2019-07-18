class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ""
      t.text :content
      t.references :user, foreign_key: true
      t.datetime :deleted_at
      t.boolean :is_public, default: true
      t.boolean :archive, default: false

      t.timestamps
    end
  end
end

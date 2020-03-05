class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: "", limit: 200
      t.text :content, null: false, default: "", limit: 30000

      t.timestamps
    end
  end
end

class AddColumnsToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :url, :text, default: "", limit: 30000
  end
end

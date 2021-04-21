class AddPublicToThoughts < ActiveRecord::Migration[6.1]
  def change
    add_column :thoughts, :public, :boolean, :default => true
  end
end

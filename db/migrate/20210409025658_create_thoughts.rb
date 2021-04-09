class CreateThoughts < ActiveRecord::Migration[6.1]
  def change
    create_table :thoughts do |t|
      t.string :title
      t.text :description
      t.string :image, :default => nil
      t.references :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end

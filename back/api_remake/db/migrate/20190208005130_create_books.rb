class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :price
      t.string :image_url
      t.integer :pages
      t.integer :read_pages
      t.string :comment

      t.timestamps
    end
  end
end

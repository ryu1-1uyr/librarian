class AddCommentAndReadpages < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :comment, :string
    add_column :books, :read_pages, :integer
  end
end

class RenameBookColumnToPostCommnets < ActiveRecord::Migration[5.2]
  def change
    rename_column :post_comments, :book, :book_id
  end
end

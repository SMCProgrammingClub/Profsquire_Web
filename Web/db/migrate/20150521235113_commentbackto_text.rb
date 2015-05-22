class CommentbacktoText < ActiveRecord::Migration
  def change
    change_column(:comments, :comment, :text)

  end
end

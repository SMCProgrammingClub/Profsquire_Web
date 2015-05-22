class ChangeCommentToStringType < ActiveRecord::Migration
  def change
    change_column(:comments, :comment, :string)

  end
end

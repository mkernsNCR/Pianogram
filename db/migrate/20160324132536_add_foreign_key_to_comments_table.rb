class AddForeignKeyToCommentsTable < ActiveRecord::Migration
  def change
    add_reference :comments, :video, index: true, foreign_key: true 
  end
end

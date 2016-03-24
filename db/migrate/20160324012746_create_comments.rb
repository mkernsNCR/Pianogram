class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
    end
  end
end

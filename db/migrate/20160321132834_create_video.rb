class CreateVideo < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :vid_url
      t.timestamps
    end
  end
end

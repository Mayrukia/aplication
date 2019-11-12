class CreateTagsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tags, :products do |t|
       t.index [:product_id, :tag_id], unique: true
     end
  end
end

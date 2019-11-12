class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :internalCode
      t.float :praice
      t.float :cost
      t.boolean :active

      t.timestamps
    end
  end
end

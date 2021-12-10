class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.integer :new_id
      t.string :title
      t.string :lower
      t.string :author
      t.string :text
      t.string :image

      t.timestamps
    end
    add_index :news, :new_id
  end
end

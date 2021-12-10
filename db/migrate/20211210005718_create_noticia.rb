class CreateNoticia < ActiveRecord::Migration[6.1]
  def change
    create_table :noticia do |t|
      t.integer :new_id
      t.string :title
      t.string :lower
      t.string :author
      t.string :text
      t.string :image

      t.timestamps
    end
    add_index :noticia, :new_id
  end
end

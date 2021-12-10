class CreateNoticia < ActiveRecord::Migration[6.1]
  def change
    create_table :noticia do |t|
      t.string :title
      t.string :lower
      t.string :author
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end

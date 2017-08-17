class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end

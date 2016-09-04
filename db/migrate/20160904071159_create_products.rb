class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      # precision: controls how many digits the number can have
      # scale: how many digits can come after the decimal
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

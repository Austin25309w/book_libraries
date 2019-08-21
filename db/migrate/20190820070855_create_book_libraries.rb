class CreateBookLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :book_libraries do |t|
      t.string :title
      t.text :description
      t.integer :book_pages
      t.string :author
      t.string :rating

      t.timestamps
    end
  end
end

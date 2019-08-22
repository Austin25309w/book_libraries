class AddUserIdToBookLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :book_libraries, :user_id, :integer
  end
end

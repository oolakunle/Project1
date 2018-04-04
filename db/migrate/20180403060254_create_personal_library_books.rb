class CreatePersonalLibraryBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_library_books do |t|
      t.integer :personal_library_id
      t.integer :book_id
    end
  end
end

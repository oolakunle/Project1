class CreateDisciplineBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :discipline_books do |t|
      t.integer :discipline_id
      t.integer :book_id
    end
  end
end

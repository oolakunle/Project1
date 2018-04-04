class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.text :title
      t.integer :year
      t.integer :author_id
      t.integer :publisher_id

      t.timestamps
    end
  end
end

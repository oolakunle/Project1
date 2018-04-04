class CreatePersonalLibraries < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_libraries do |t|
      t.text :title
      t.integer :user_id

      t.timestamps
    end
  end
end

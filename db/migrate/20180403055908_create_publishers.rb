class CreatePublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers do |t|
      t.text :name
      t.text :logo

      t.timestamps
    end
  end
end

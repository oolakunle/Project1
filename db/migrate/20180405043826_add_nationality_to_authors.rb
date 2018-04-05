class AddNationalityToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :nationality, :text
  end
end

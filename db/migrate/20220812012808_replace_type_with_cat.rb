class ReplaceTypeWithCat < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :type
    remove_column :jobs, :type_id
    add_column :jobs, :cat, :string
    add_column :jobs, :cat_id, :integer
  end
end

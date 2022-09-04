class RenameCatIdToCategoryId < ActiveRecord::Migration[6.1]
  def change
    rename_column :jobs, :cat_id, :category_id
  end
end

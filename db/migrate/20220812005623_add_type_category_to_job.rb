class AddTypeCategoryToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :type, :string
    add_column :jobs, :type_id, :integer
  end
end

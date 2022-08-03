class AddPosColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :position, :string
  end
end

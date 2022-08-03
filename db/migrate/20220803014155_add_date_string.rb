class AddDateString < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :applieddate, :string
    add_column :jobs, :responsedate, :string
  end
end

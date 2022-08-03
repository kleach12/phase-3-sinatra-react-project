class AddDateColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :applieddate, :date
    add_column :jobs, :responsedate, :date
  end
end

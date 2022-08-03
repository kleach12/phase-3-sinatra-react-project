class RemDattimeColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column(:jobs,:applieddate)
    remove_column(:jobs,:responsedate)
  end
end

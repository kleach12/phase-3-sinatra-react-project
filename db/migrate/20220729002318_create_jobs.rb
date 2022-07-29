class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :postion
      t.string :company
      t.string :status
      t.datetime :applieddate
      t.datetime :responsedate
      t.string :notes
    end
  end
end

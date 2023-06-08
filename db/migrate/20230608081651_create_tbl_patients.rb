class CreateTblPatients < ActiveRecord::Migration[7.0]
  def change
    create_table :tbl_patients do |t|
      t.string :name

      t.timestamps
    end
  end
end

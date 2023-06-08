class CreateTblPatients < ActiveRecord::Migration[7.0]
  def change
    create_table :tbl_patients do |t|
      t.string :name
      t.integer :age
      t.integer :gender_id
      t.integer :service_id

      t.timestamps
    end
  end
end

class CreateTblServices < ActiveRecord::Migration[7.0]
  def change
    create_table :tbl_services do |t|
      t.string :service_name

      t.timestamps
    end
  end
end

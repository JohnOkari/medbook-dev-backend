class CreateTblGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :tbl_genders do |t|
      t.string :gender

      t.timestamps
    end
  end
end

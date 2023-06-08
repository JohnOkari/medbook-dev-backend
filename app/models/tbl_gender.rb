class TblGender < ApplicationRecord
    has_one :tbl_patient, through: :gender_id
end

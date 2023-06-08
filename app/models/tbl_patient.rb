class TblPatient < ApplicationRecord
    belongs_to :tbl_gender, through: :gender_id
    belongs_to :tbl_service, through: :service_id
end

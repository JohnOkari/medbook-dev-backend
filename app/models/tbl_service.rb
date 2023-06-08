class TblService < ApplicationRecord
    has_one :tbl_patient, foreign_key: :service_id
end

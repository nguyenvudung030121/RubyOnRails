class QlTv < ApplicationRecord
    has_secure_password
    validates :sv_id, uniqueness: true, allow_blank: false

end

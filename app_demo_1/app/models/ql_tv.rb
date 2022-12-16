class QlTv < ApplicationRecord
    attr_accessor :password_confirmation
    attr_accessible :sv_id
    attr_protected :password
    validates_confirmation_of :password
end

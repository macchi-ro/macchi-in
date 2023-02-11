class Reservation < ApplicationRecord

    belongs_to :customer
    belongs_to :plan
    belongs_to :room
end

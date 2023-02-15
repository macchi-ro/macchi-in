class Reservation < ApplicationRecord

    belongs_to :customer
    belongs_to :plan
    belongs_to :room

  def self.ransackable_attributes(auth_object = nil)
    ["count", "created_at", "customer_id", "id", "including_tax_total_amount", "lodgment_date", "nights_number", "note", "plan_id", "room_id", "room_number", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["customer", "plan", "room"]
  end

end

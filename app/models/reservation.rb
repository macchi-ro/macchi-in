class Reservation < ApplicationRecord

    belongs_to :customer
    belongs_to :plan
    belongs_to :room

  validates :room_id, presence: true

  validates :lodgment_date, presence: true

  validates :nights_number, presence: true

  validates :count, presence: true

  validates :room_number, presence: true

  validates :note, length: { maximum: 300 }

  def self.ransackable_attributes(auth_object = nil)
    ["count", "created_at", "customer_id", "id", "including_tax_total_amount", "lodgment_date", "nights_number", "note", "plan_id", "room_id", "room_number", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["customer", "plan", "room"]
  end

end

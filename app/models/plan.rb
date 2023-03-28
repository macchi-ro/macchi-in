class Plan < ApplicationRecord
  has_one_attached :image

  validates :image, presence: true

  validates :name, presence: true, length: { minimum: 1, maximum: 20 }

  validates :tax_excluded_fee, presence: true

  validates :meal, presence: true

  validates :description, presence: true, length: { minimum: 1, maximum: 300 }

  validates :sales_status, presence: true

  has_many :reservations, dependent: :destroy
  has_many :favorites, dependent: :destroy


  enum meal: { no_meal: 0, has_meal: 1 }

  enum sales_status: { stopping_sales: 0, on_sale: 1 }

  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "meal", "name", "sales_status", "tax_excluded_fee", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["favorites", "image_attachment", "image_blob", "reservations"]
  end

end

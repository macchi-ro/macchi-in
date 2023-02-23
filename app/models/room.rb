class Room < ApplicationRecord
    has_one_attached :image

    validates :image, presence: true

    validates :name, presence: true, length: { minimum: 1, maximum: 20 }

    validates :description, presence: true, length: { minimum: 1, maximum: 200 }


    has_many :reservations, dependent: :destroy

end

class Information < ApplicationRecord

    validates :title, presence: true, length: { minimum: 1, maximum: 20 }

    validates :content, presence: true, length: { minimum: 1, maximum: 250 }
end

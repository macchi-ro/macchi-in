class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :favorites, dependent: :destroy

  #unsubscribe_statusがtureならログインを弾く記述
  def active_for_authentication?
    super && (unsubscribe_status == false)
  end
  
  def self.ransackable_attributes(auth_object = nil)
    %w["address", "address_number", "age", "created_at", "email", "encrypted_password", "first_name", "first_name_kana", "gender", "id", "last_name", "last_name_kana", "remember_created_at", "reset_password_sent_at", "reset_password_token", "unsubscribe_status", "updated_at"]
  end
end


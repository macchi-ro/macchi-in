class Public::HomesController < ApplicationController
  def top
   @informations = Information.all.order(created_at: :desc)
  end

  def guest_sign_in
    customer = Customer.find_or_create_by!(email: 'guest@example.com') do |customer|
      customer.password = SecureRandom.urlsafe_base64
      customer.last_name = "ゲスト"
      customer.first_name = "ゲスト"
      customer.last_name_kana = "ゲスト"
      customer.first_name_kana = "ゲスト"
      customer.address = "ゲスト"
      customer.address_number = "ゲスト"
      customer.gender = "ゲスト"
      customer.age =  "ゲスト"
    end
    sign_in customer
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end

class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!
  def show
   @customer = current_customer
  end

  def edit
   @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update!(customer_params)
    flash[:notice] = "マイページを更新しました！"
     redirect_to customers_path
  end

  def withdrawal
    @customer = current_customer
    @customer.update(unsubscribe_status: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  def favorites
    @customer = current_customer
    favorites= Favorite.where(customer_id: @customer.id).pluck(:plan_id)
    @favorite_plans = Plan.find(favorites)
  end

  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :address, :address_number, :email, :gender, :age)
  end
end

class Admin::CustomersController < ApplicationController

  def search
    # params[:q]のqには検索フォームに入力した値が入る
    @q = Customer.ransack(params[:q])
    @customers = @q.result(distinct: true)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @q = Customer.ransack(params[:q])
    @ransack_customers = @q.result(distinct: true)
    @customers = @q.result(distinct: true)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    flash[:notice] = "顧客情報を更新しました！"
     redirect_to admin_customers_path
  end

    private
    def customer_params
      params.require(:customer).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :address_number, :gender, :age, :unsubscribe_status)
    end

end

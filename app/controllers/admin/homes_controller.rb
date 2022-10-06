class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @customers = Customer.all
    if params[:customer_id]
      @customer = @customers.find(params[:customer_id])
      orders = Order.where(customer_id: @customer.id)
    else
      orders = Order.all
    end
    @orders = orders.page(params[:page]).per(10).order(created_at: :desc)
  end
end
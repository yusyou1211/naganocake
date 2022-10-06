class Admin::OrderDetailsController < ApplicationController
  before_action :authenticate_admin!

  def update
    @order_detail = OrderDetail.find(params[:id])
    @order = @order_detail.order
    @order_details = @order.order_details
    if @order_detail.update(order_detail_params)
      if @order_detail.making_status == "manufacturing"
        @order.update(status: "making" )
      elsif @order_details.count == @order_details.where(making_status: "finish_manufacture" ).count
        @order.update(status: "preparing_ship")
      end
      redirect_to admin_order_path(@order)
    end
  end

  private

  def order_detail_params
    params.require(:order_detail).permit(:making_status)
  end

end

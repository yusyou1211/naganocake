class Public::AddressesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @address = Address.new
    @addresses = Address.where(customer_id: current_customer.id)
  end

  def create
    @address = Address.new(addresses_params)
    @address.customer_id = current_customer.id
    if @address.save
      redirect_to addresses_path
    else
      flash.now[:notice] = "入力内容を確認してください"
      @addresses = Address.where(customer_id: current_customer.id)
      render 'index'
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(addresses_params)
      redirect_to addresses_path
    else
      flash.now[:notice] = "入力内容を確認してください"
      @address = Address.find(params[:id])
      render 'edit'
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end


  private

  def addresses_params
    params.require(:address).permit(:postal_code, :address, :name)
  end

end

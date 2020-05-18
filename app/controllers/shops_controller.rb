class ShopsController < ApplicationController
  def index
  end
  def new
    @shop = Shop.new
  end
  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path, notice: 'お店を登録しました'
    else
      render :new
    end
  end 
  private
  def shop_params
    params.require(:shop).permit(:name, :url)
  end
end
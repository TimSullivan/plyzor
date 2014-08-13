class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.incomplete
    @recent_completed_items = Item.where('completed_at > ?', 4.days.ago).order('completed_at desc')
  end

  def update
    @item = Item.find params[:id]
    @item.update_attributes item_params
    @item.update_column :completed_by_user_id, current_user.id if @item.complete
  end

  def assign
    @item = Item.find params[:id]
    @user = User.find_by_username params[:username]
    if @user
      @item.user = @user
      @saved = @item.save
    end
  end

  private

  def item_params
    params.require(:item).permit(:complete, :user_id)
  end
end

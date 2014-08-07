class ItemsController < ApplicationController
  def index
    @items = Item.incomplete
  end
end

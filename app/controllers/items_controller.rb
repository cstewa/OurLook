class ItemsController < ApplicationController
  def index
    @dress = Item.find(1)
    @purse = Item.find(2)
    @shorts = Item.find(3)
    @heels = Item.find(4)
    @ring = Item.find(5)
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
  end

  def edit
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.is_available?
        @item.update_attributes(:count => @item.count -= 1)
        @item.users << current_user
        format.js { render :action => "purchased"}
      else
        format.js { render :action => "out_of_stock"}
      end
    end 
  end

  def update
    @item = Item.find(params[:id])
    @review = Review.create(:text => params[:review], :item_id => @item.id, :user_id => current_user.id)
    
    respond_to do |format|
      format.js { render :action => "review"}
    end
  end

  def create
  end

  def new
  end
end

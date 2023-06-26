class Public::PostTeasController < ApplicationController
  def index
  end

  def new
    @post_tea = PostTea.new
  end

  def create
    @post_tea = PostTea.new(post_tea_params)
    @post_tea.customer_id = current_customer.id
    @post_tea.save
    redirect_to post_teas_path
  end

  def show
  end

  def edit
  end

  private

  def post_tea_params
    params.require(:post_tea).permit(:title, :introduction, :image, :kind)
  end
end

class OnesController < ApplicationController
  before_action :set_one, only: %i[ show edit update destroy ] 

  def index
    @ones = One.all
  end

  def edit
  end

  def new
    @one = One.new
  end

  def show
  end

  def create
    @one = One.new(one_params)
    if @one.save
      redirect_to @one, notice: "oneは作られました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @one.destroy
    redirect_to ones_url, notice: "oneは削除されました"
  end

  def update
    if @one.update(one_params)
      redirect_to @one, notice: "正常に更新されました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_one
    @one = One.find(params[:id])
  end
  
  def one_params
    params.require(:one).permit(:title, :body)
  end
end
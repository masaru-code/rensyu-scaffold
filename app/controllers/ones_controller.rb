class OnesController < ApplicationController
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

    respond_to do |format|
      if @one.save
        redirect_to @one, notice: "oneは作られました"
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @one.destroy
    respond_to do |format|
      redirect_to ones_url, notice: "oneは削除されました"
    end
  end

  def update
  end

  private
  
  def one_params
    params.require(:one).permit(:title, :body)
  end

end
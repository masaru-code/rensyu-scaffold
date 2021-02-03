class ScaffosController < ApplicationController
  before_action :set_scaffo, only: %i[ show edit update destroy ]

  def index
    @scaffos = Scaffo.all
  end

  def show
  end

  def new
    @scaffo = Scaffo.new
  end

  def edit
  end

  def create
    @scaffo = Scaffo.new(scaffo_params)

    respond_to do |format|
      if @scaffo.save
        redirect_to @scaffo, notice: "Scaffo was successfully created." 
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def update
    respond_to do |format|
      if @scaffo.update(scaffo_params)
        redirect_to @scaffo, notice: "Scaffo was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end


  def destroy
    @scaffo.destroy
    respond_to do |format|
      redirect_to scaffos_url, notice: "Scaffo was successfully destroyed."
    end
  end

  private
  
    def set_scaffo
      @scaffo = Scaffo.find(params[:id])
    end

    def scaffo_params
      params.require(:scaffo).permit(:title, :body)
    end
end

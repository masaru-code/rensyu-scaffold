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
  end
  
  def destroy
  end

  def update
  end

end
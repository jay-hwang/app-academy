class SubsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end

  def destroy
  end

  private
    def sub_params
      params.require(:sub).permit(:title, :description)
    end
end

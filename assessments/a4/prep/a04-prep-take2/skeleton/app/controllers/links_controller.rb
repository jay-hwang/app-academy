class LinksController < ApplicationController

  def new
  end

  def create
    
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end



  private

    def link_params
      params.require(:link).permit(:title, :url)
    end
end

class TracksController < ApplicationController
  before_action :ensure_user_online
  
  def new
    @track = Track.new
    render :new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :edit
    end
  end

  def destroy
    @track = Track.find(params[:id])
    current_album = @track.album
    @track.destroy
    redirect_to album_url(current_album)
  end

  private
    def track_params
      params.require(:track).permit(
        :name,
        :album_id,
        :track_pos,
        :track_type,
        :lyrics
      )
    end
end

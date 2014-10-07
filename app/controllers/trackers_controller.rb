class TrackersController < ApplicationController
  before_action :set_tracker, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @trackers = current_user.trackers
    respond_with(@trackers)
  end

  def show
    respond_with(@tracker)
  end

  def new
    @tracker = Tracker.new
    respond_with(@tracker)
  end

  def edit
  end

  def create
    @tracker = current_user.trackers.build(tracker_params)
    @tracker.save
    respond_with(@tracker)
  end

  def update
    @tracker.update(tracker_params)
    respond_with(@tracker)
  end

  def destroy
    @tracker.destroy
    respond_with(@tracker)
  end

  private
    def set_tracker
      @tracker = current_user.trackers.find(params[:id])
    end

    def tracker_params
      params.require(:tracker).permit(:name, :producer, :uid)
    end
end

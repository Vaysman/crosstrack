class TrackersController < ApplicationController
  before_action :set_tracker, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @trackers = Tracker.all
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
    @tracker = Tracker.new(tracker_params)
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
      @tracker = Tracker.find(params[:id])
    end

    def tracker_params
      params.require(:tracker).permit(:name, :producer, :uid, :user_id)
    end
end
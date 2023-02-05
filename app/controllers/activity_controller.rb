class ActivityController < ApplicationController
  def index
    @activity = ActivitySearchFacade.search_activity(params[:num_participants])
  end
end
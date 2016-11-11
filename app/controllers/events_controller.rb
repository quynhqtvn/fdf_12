class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def update
    current_user.events.unread.update_all read: true
  end
end

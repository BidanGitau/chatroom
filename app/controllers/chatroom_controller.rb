class ChatroomController < ApplicationController
  before_action :require_user 
  def index
    @message=Message.new
    @messages=Message.all
  end

  def new
  end

  def edit
  end

  def update
  end
end

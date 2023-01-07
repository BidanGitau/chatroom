class MessagesController < ApplicationController
  before_action :require_user
  
   def create
      
      message=Message.new(message_params)
      message.user=current_user
       if message.save
        ActionCable.server.broadcast "chatroom_channel",{message_mod: message_render(message) }
        
        end
       
     end
     
  private
  def message_params
    params.require(:message).permit(:body)
  end
  def message_render(message)
    render_to_string(partial: 'message', locals: {message: message}) 
  end
end
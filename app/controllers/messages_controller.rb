class MessagesController < ApplicationController
  
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)
    
    if @message.save
      MyMailer.visitor_email(@message).deliver
      flash[:success] = "Your email has been sent, and I can't wait to read it!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  private
  
  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
  
end
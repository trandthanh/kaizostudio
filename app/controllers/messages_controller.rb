class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @message = Message.new
  end

  def create

    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to new_message_url, notice: "Nous avons reçu votre message et reviendrons vers vous le plus rapidement possible."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :phone, :body)
  end
end

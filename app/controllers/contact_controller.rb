class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to root_path, notice: "Message received"
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:first_name, :last_name, :email, :phone_number, :contact_method, :location, :subject, :body)
  end

end

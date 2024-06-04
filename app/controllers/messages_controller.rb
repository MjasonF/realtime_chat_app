class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      ActionCable.server.broadcast 'chat_channel', { message: @message.body }
      redirect_to home_index_path
    else
      render json: { errors: @message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    if @message.update(message_params)
      ActionCable.server.broadcast 'chat_channel', { id: @message.id, message: @message.body, updated: true }
      redirect_to home_index_path
    else
      render :edit
    end
  end

  def destroy
    @message = Message.find(params[:id])
    if @message.destroy
      ActionCable.server.broadcast 'chat_channel', { id: @message.id, deleted: true }
      redirect_to home_index_path
    else
      render json: { errors: @message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end

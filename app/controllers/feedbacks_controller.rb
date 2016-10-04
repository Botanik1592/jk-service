class FeedbacksController < ApplicationController
  before_action :authenticate_user!


  def show
  end

  def ok
    @user = current_user
  end

  def message
    current_user.phone = params[:phone]
    current_user.kvartira = params[:kvartira]
    current_user.message = params[:message]
    @user = current_user

    if params[:kvartira].empty?
      @error = "Поле 'Квартира' должно быть заполнено"
      render 'show'
    elsif params[:phone].empty?
      @error = "Поле 'Телефон' должно быть заполнено"
      render 'show'
    elsif params[:message].empty?
      @error = "Поле 'Сообщение' должно быть заполнено"
      render 'show'
    else
      FeedbackMailer.send_message(@user).deliver_now
      redirect_to "/show", notice: "Ваше сообщение было успешно отправлено!"
    end
  end

end

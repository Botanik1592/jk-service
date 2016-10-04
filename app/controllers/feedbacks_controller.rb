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

    FeedbackMailer.send_message(@user).deliver_now
    redirect_to "/feedbacks/ok"
  end

end

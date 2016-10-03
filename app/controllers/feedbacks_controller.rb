class FeedbacksController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def message
    @user_name = params[:name]
    @user_phone = params[:phone]
    @user_kv = params[:kvartira]
    @user_message = params[:message]


  end

end

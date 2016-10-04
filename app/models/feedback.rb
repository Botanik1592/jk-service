class Feedback < ApplicationRecord

  before_action :set_user

  def set_user
    @user = current_user
  end
end

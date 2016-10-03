class Feedback < ApplicationRecord

  def send_destroy_notification
    TicketsMailer.new_message(current_user.email, @user_message).deliver_now
  end

end

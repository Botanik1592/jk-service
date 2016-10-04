class FeedbackMailer < ApplicationMailer
  def send_message(user)
    @user = user
    mail(to: 'anton.buryka@gmail.com', subject: "Новое обращение от пользователя")
  end
end

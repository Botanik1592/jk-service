class FeedbackMailer < ApplicationMailer
  def send_message(user)
    @user = user
    mail(to: 'korzuna-26@ya.ru', subject: "Новое сообщение с сайта jk-service")
  end
end

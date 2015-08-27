class NotifyMeMailer < ActionMailer::Base
  default from: "info@movierama.dev"

  def movie_liked(email)
    mail(to: email, subject: 'Somebody has liked your movie')
  end
end

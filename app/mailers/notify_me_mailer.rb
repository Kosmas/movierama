class NotifyMeMailer < ActionMailer::Base
  default from: "info@movierama.dev"

  def movie_liked(email)
    mail(to: email, subject: 'Somebody has liked your movie')
  end

  def movie_hated(email)
    mail(to: email, subject: 'Somebody has hated your movie')
  end
end

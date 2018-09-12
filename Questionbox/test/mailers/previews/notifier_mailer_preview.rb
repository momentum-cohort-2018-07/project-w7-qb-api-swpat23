# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview

    # Preview this email at http://localhost:3000/rails/mailers/notifier_mailer/notify
    def notify
      UserMailer.notify(User.first)
    end

end

# Preview this email at http://localhost:3000/rails/mailers/user_mailer/signup
# def signup
#   UserMailer.signup(User.first)
# end
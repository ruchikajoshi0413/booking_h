class WelcomeMailer < ApplicationMailer
    def send_welcome_mail
        mail(to: "ruchikajoshi1397@gmail.com", from: "ruchikajoshi7599@gmail.com", subject: "Welcome", message: "Hi!!")
    end
end

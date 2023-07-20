class WelcomesController < ApplicationController
    def index
    end

    def send_mail
    WelcomeMailer.send_welcome_mail.deliver_now!
    render text: "Mail Sent"
    end
end

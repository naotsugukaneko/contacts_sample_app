if Rails.env.production?
    host = "mysterious-earth-57087.herokuapp.com/"
    ActionMailer::Base.raise_delivery_errors = true
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.default_url_options = { host: host }
    ActionMailer::Base.smtp_settings = {
        port: 587,
        address: "smtp.gmail.com",
        user_name: Rails.application.credentials.gmail[:address],
        password: Rails.application.credentials.gmail[:password],
        domain: host,
        authentication: "plain"
    }
elsif Rails.env.development?
    ActionMailer::Base.default_url_options = { host: '9dfc8e35835848b6b7d21e96d8cc1205.vfs.cloud9.us-east-2.amazonaws.com/' }
    ActionMailer::Base.delivery_method = :letter_opener_web
end

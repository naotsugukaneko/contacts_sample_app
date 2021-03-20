if Rails.env.production?
    host = "mysterious-earth-57087.herokuapp.com/"
    ActionMailer::Base.raise_delivery_errors = true
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.default_url_options = { host: host }
    ActionMailer::Base.stmp_settings = {
        port: 587,
        address: "smtp.gmail.com",
        user_name: Rails.application.credentials.gmail[:address],
        password: Rails.application.credentials.gmail[:password],
        domain: host,
        authentication: "plain"
    }
end
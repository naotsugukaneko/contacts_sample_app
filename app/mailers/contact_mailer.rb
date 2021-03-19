class ContactMailer < ApplicationMailer
  def user_email
    @greeting = "Hi"
    mail(
      to: email,
      subject: "【お問い合わせアプリ】お問い合わせを受付いたしました"
    )
  end

  def admin_email
    @greeting = "Hi"

    mail to: "to@example.org"
    
  end
end

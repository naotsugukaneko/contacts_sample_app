class ContactMailer < ApplicationMailer
  
  def user_email(name:, email:)
    @name = name
    mail(
      to: email,
      subject: "【お問い合わせアプリ】お問い合わせを受付いたしました"
    )
  end

  def admin_email
    
  end
end

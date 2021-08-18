class ChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_mail(new_owner_email)
    @new_owner_email = new_owner_email
    mail to: @new_owner_email, subject: "リーダーを任されました！"
  end
end

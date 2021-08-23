class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_mail(agenda_user)
    @agenda_member_email = agenda.team.users_email
    mail to: @agenda_member_email, subject: "アジェンダが削除されました！"
  end
end

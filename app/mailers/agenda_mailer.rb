class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_mail(agenda)
    @agenda = agenda
    @assign = Assign.where(team_id: @agenda.team_id)
    @assign.each do |assign|
      @user = User.find(assign.user_id)
      # @agenda_member_email = agenda.team.users_email
      mail to: @user.email, subject: "アジェンダが削除されました！"
    end
  end
end

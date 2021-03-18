class LeaderChangeMailer < ApplicationMailer
  def contact_mail(leaderchange)
    @team = leaderchange
    @user = @team.owner
    mail to: @team.owner.email, subject: "オーナー変更確認メール"
  end
end

class DestroyMailer < ApplicationMailer
  def destroy_mail(agenda)
    @agenda = agenda
    members = agenda.team.members
    emails = []

    members.each do |member|
      emails << member.email
    end

    emails = emails.join(', ')

    mail to: emails, subject: "Agenda削除確認メール"
  end
end

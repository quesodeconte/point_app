class PointMailer < ApplicationMailer
  default to: "moebacaftw@gmail.com",
          from: 'notification@example.com',
          subject: "test"

  def point_update
    # @user = 'matt'
    # @url  = 'http://example.com/login'
    mail(to: current_admin_user.email)
  end
end

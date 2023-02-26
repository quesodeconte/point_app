class SpendPointsMailer < ApplicationMailer
  def spend_points
    @user = params[:email]
    @url  = 'http://http://127.0.0.1:3000/admin/login'
    mail(to: @user, subject: "#{@user} has spent points!")
  end
end

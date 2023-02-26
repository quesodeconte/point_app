class SpendPointsMailer < ApplicationMailer
  def spend_points
    # @user = params[:email]
    # @slip_number = params[:slip_number]
    # @url  = 'http://http://127.0.0.1:3000/admin/login'
    # mail(to: @user, subject: "#{@user} has spent points!")
    mail(to: "", subject: "Email has spent points!")
  end
end

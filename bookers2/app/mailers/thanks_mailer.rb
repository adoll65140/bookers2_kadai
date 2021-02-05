class ThanksMailer < ApplicationMailer
    def send_signup_email(user)
      @user = user
      @url = "https://f24473cb7c0644a0a5db23922525128e.vfs.cloud9.us-east-1.amazonaws.com/users/#{@user.id}"
      mail(subject: "会員登録完了のお知らせ", to: @user.email)    
    end
end

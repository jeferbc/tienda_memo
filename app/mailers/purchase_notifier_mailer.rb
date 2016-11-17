#rails generate mailer PurchaseNotifier
#cada tipo de corre tiene un metodo
class PurchaseNotifierMailer < ApplicationMailer
  default :from => 'info@latiendadememo.com'
def notify_account_balance(user, balance)
  @user = user
  @balance = balance
  
  mail(to: user.email, subject: "Es hora de conversar con Memo!")
end

end

module PagesHelper
  def balance_status(current_user)
    balance = Purchase.balance(current_user)
    balance > 10_000 ? 'label-danger' : 'label-success';
  end
end

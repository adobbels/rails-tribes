ActiveAdmin.register Order do

 permit_params :state, :house_id, :amount_cents, :amount_currency, :payment

end




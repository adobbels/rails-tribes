ActiveAdmin.register Profile do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :user_id, :first_name, :last_name, :phone_number, :birthday, :address, :post_code, :city, :country, :photo, :biography

end

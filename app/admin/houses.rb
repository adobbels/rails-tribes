ActiveAdmin.register House do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

 permit_params :name, :price_cents, :capacity, :description, :photos, :address, :post_code, :city, :country, :idlock, :ipaddress, :idbridge

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

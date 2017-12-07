ActiveAdmin.register Booking do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :profile_id, :house_id, :start_date, :end_date, :status
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# action_item only: [:show] do |booking|
#   link_to('Accept', accept_booking_path(booking.id))
# end


  # index do
  #  selectable_column
  #  column :profile_id
  #  column :house_id
  #  column :start_date
  #  column :start_date
  #  column :end_date
  #  column :status
  #  column "Edit Status" do |resource|
  #   link_to("Accept",
  #     accept_booking_path(resource)
  #   )
  #   link_to("Accept",
  #     accept_booking_path(resource)
  #   )
  #   end
  #   column("View") do |user|
  #     span link_to "View", "/"
  #     span link_to "Edit", "/"
  #     span link_to "Delete", "/"
  #   end

  # end


  # form  do |f|
  #   f.collection_select :profile_id, Profile.all, :id, :id
  #   f.collection_select :house_id, House.all, :id, :id
  #   f.collection_select :profile_id, Profile.all, :id, :id
  #   f.button
  # end



end

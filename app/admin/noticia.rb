ActiveAdmin.register Noticium do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :lower, :author, :body, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :lower, :author, :body, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end

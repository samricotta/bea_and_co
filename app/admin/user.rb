ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    selectable_column
    column :id
    column :email
    column :created_at
    column :admin
    column :first_name
    column :last_name
    column :photo
    column :admin
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :email
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.inputs "Password" do
      f.input :password
    end
    f.inputs "Password Confirmation" do
      f.input :password_confirmation
    end
    f.inputs "First Name" do
      f.input :first_name
    end
    f.inputs "Last Name" do
      f.input :last_name
    end
    f.inputs "Photo" do
      f.input :photo
    end

    f.actions
  end

  permit_params :email, :admin, :password, :password_confirmation, :first_name, :last_name, :photo
end

ActiveAdmin.register User do
  permit_params :email, :first_name, :last_name, :username, :password, :password_confirmation, :role_id, :location_id, :depo_site_id

  form do |f|
    f.inputs 'Details' do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :username
      f.input :location_id
      f.input :depo_site_id
      f.input :role_id

      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end

    actions
  end

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :username
    column :sign_in_count
    column :role do |user|
      user.role.name
    end
    column :depo_site_id
    column :location_id
    column :created_at
    column :updated_at

    actions
  end

  filter :id
  filter :email
  filter :username
  filter :first_name
  filter :last_name
  filter :role_id
  filter :depo_site_id
  filter :location_id
  filter :created_at
  filter :updated_at

  show do
    attributes_table do
      row :id
      row :email
      row :first_name
      row :last_name
      row :username
      row :location_id
      row :depo_site_id
      row :role_id
      row :sign_in_count
      row :created_at
      row :updated_at
    end
  end
end

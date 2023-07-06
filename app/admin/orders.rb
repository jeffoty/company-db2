ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :product_id, :type, :date, :amount_paid, :payment_code, :status, :quantity
  
  form do |f|
    f.input :product do |m|
      Product.find(m.product_ids).map(&:name).join('')
    end
    f.input :type
    f.input :amount_paid
    f.input :payment_code
    f.input :status
    f.input :quantity
    f.input :date, as: :datepicker,
                        datepicker_options: {
                          min_date: "2013-10-8",
                          max_date: "+3D"
                        }

    actions
  end
  
  

  #
  # or
  #
  # permit_params do
  #   permitted = [:product_id, :type, :date, :amount_paid, :payment_code, :status, :quantity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

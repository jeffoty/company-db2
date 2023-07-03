# == Schema Information
#
# Table name: orders
#
#  id           :bigint           not null, primary key
#  product_id   :string
#  type         :string
#  date         :integer
#  amount_paid  :integer
#  payment_code :string
#  status       :string
#  quantity     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Order < ApplicationRecord
    has_many :products
    belongs_to :user
    belongs_to :special_economic_group
    belongs_to :financial_info

    def update_inventory_quantity
        inventory = Inventory.find_by(product_id: product_id)
        
        if order_type == "purchase"
          inventory.quantity += quantity
        elsif order_type == "sales"
          inventory.quantity -= quantity
        end
        
        inventory.save
      end
end

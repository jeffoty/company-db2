# == Schema Information
#
# Table name: orders
#
#  id           :bigint           not null, primary key
#  type         :string
#  date         :integer
#  quantity     :integer
#  amount_paid  :integer
#  payment_code :string
#  status       :string
#  product      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Order < ApplicationRecord
    belongs_to :product
    belongs_to :user
    belongs_to :depo_site
    belongs_to :special_economic_group
end

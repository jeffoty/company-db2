# == Schema Information
#
# Table name: orders
#
#  id           :bigint           not null, primary key
#  type         :string
#  date         :integer
#  amount_paid  :integer
#  payment_code :string
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Order < ApplicationRecord
    # belongs_to :product
    belongs_to :user
    belongs_to :location
    belongs_to :depo_site
    has_one :logistics
    belongs_to :special_economic_group
    has_many :purchases
end

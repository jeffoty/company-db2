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
FactoryBot.define do
  factory :order do
    type { "" }
    date { 1 }
    quantity { 1 }
    amount_paid { 1 }
    payment_code { "MyString" }
    status { "MyString" }
  end
end

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
require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

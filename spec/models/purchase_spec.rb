# == Schema Information
#
# Table name: purchases
#
#  id         :bigint           not null, primary key
#  order_id   :integer
#  product_id :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Purchase, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

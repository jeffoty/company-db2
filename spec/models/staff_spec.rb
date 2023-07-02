# == Schema Information
#
# Table name: staffs
#
#  id          :bigint           not null, primary key
#  location_id :bigint           not null
#  first_name  :string
#  second_name :string
#  role        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_staffs_on_location_id  (location_id)
#
require 'rails_helper'

RSpec.describe Staff, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

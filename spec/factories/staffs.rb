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
FactoryBot.define do
  factory :staff do
    location { nil }
  end
end

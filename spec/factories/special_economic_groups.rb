# == Schema Information
#
# Table name: special_economic_groups
#
#  id              :bigint           not null, primary key
#  name            :string
#  group_leader_id :integer
#  group_size      :integer
#  constituency_id :bigint           not null
#  ward_id         :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_special_economic_groups_on_constituency_id  (constituency_id)
#  index_special_economic_groups_on_ward_id          (ward_id)
#
FactoryBot.define do
  factory :special_economic_group do
    name { "MyString" }
    group_leader_id { 1 }
    group_size { 1 }
    constituency { nil }
    ward { nil }
  end
end

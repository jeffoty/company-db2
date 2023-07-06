# == Schema Information
#
# Table name: special_economic_groups
#
#  id              :bigint           not null, primary key
#  name            :string
#  group_leader_id :integer
#  group_size      :integer
#  order_id        :bigint           not null
#  ward_id         :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_special_economic_groups_on_order_id  (order_id)
#  index_special_economic_groups_on_ward_id   (ward_id)
#
class SpecialEconomicGroup < ApplicationRecord
  belongs_to :ward
  has_many :users
  has_many :inventorys
end

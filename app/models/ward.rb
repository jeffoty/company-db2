# == Schema Information
#
# Table name: wards
#
#  id              :bigint           not null, primary key
#  name            :string
#  constituency_id :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_wards_on_constituency_id  (constituency_id)
#
class Ward < ApplicationRecord
  belongs_to :constituency
  has_many :special_economic_groups
end

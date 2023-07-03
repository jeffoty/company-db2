# == Schema Information
#
# Table name: constituencies
#
#  id           :bigint           not null, primary key
#  name         :string
#  depo_site_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_constituencies_on_depo_site_id  (depo_site_id)
#
class Constituency < ApplicationRecord
    has_many :wards
    belongs_to :depo_site
end

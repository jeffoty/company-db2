# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Location < ApplicationRecord
    has_many :orders
    has_many :inventory
    has_many :staff
    has_many :special_economic_groups
    has_many :depo_site
    has_many :users
end

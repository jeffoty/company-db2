# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users
end

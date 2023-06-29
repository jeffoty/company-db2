# == Schema Information
#
# Table name: depo_sites
#
#  id          :bigint           not null, primary key
#  name        :string
#  location_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_depo_sites_on_location_id  (location_id)
#
class DepoSiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :users
  belongs_to :location, serializer: LocationSerializer
end

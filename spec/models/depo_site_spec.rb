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
require 'rails_helper'

RSpec.describe DepoSite, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

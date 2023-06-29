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

RSpec.describe "DepoSites", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end
end

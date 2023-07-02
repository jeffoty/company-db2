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
require 'rails_helper'

RSpec.describe "Wards", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end
end

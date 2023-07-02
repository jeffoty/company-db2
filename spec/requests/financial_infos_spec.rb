# == Schema Information
#
# Table name: financial_infos
#
#  id               :bigint           not null, primary key
#  location_id      :bigint           not null
#  invoice_number   :integer
#  transaction_type :string
#  amount           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_financial_infos_on_location_id  (location_id)
#
require 'rails_helper'

RSpec.describe "FinancialInfos", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end
end

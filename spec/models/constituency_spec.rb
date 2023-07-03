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
require 'rails_helper'

RSpec.describe Constituency, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

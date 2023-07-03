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
FactoryBot.define do
  factory :constituency do
    name { "MyString" }
  end
end

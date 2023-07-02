# == Schema Information
#
# Table name: constituencies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Constituency < ApplicationRecord
    has_many :wards
end

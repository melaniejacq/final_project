# == Schema Information
#
# Table name: attributes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Attribute < ApplicationRecord

    has_many :features
    has_many :preferences

end

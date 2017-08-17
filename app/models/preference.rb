# == Schema Information
#
# Table name: preferences
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  attribute_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Preference < ApplicationRecord

    belongs_to :candidate
    belongs_to :attribute

end

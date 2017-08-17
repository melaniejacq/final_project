# == Schema Information
#
# Table name: industry_preferences
#
#  id             :integer          not null, primary key
#  candidate_id   :integer
#  industry_id    :integer
#  classification :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class IndustryPreference < ApplicationRecord

    belongs_to :candidate
    belongs_to :industry

end

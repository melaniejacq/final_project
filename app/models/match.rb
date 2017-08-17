# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  job_id       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Match < ApplicationRecord

    belongs_to :candidate
    has_one :application
    has_one :invite
    belongs_to :job

end

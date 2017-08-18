# == Schema Information
#
# Table name: job_type_matches
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  job_type_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class JobTypeMatch < ApplicationRecord

    belongs_to :candidate
    belongs_to :job_type

    validates :candidate_id, :presence => true, :uniqueness => { :scope => :job_type_id }
    validates :job_type_id, :presence => true
    
end

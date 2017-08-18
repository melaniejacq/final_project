# == Schema Information
#
# Table name: requirements
#
#  id         :integer          not null, primary key
#  job_id     :integer
#  skill_id   :integer
#  use_case   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Requirement < ApplicationRecord

    belongs_to :job
    belongs_to :skill

    validates :job_id, :presence => true, :uniqueness => { :scope => :skill_id }
    validates :skill_id, :presence => true
    # validates :use_case, :presence => true

end

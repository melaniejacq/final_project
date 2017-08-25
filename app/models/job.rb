# == Schema Information
#
# Table name: jobs
#
#  id           :integer          not null, primary key
#  title        :string
#  company_id   :integer
#  location     :string
#  job_type_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  recruiter_id :integer
#

class Job < ApplicationRecord

    belongs_to :company
    belongs_to :recruiter
    has_many :matches, :dependent => :destroy
    has_many :requirements, :dependent => :destroy
    has_many :features, :dependent => :destroy
    belongs_to :job_type

end

# == Schema Information
#
# Table name: job_types
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class JobType < ApplicationRecord
    
    has_many :jobs, :dependent => :nullify
    has_many :job_type_matches, :dependent => :destroy

    validates :name, :presence => true, :uniqueness => { :case_sensitive => false }

end

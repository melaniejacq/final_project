# == Schema Information
#
# Table name: superpowers
#
#  id           :integer          not null, primary key
#  candidate_id :integer
#  skill_id     :integer
#  story        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Superpower < ApplicationRecord

    belongs_to :candidate
    belongs_to :skill

    validates :candidate_id, :presence => true, :uniqueness => { :scope => :skill_id }
    validates :skill_id, :presence => true
    # validates :story, :presence => true

end

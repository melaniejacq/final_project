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

end

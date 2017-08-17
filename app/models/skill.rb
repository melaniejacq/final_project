# == Schema Information
#
# Table name: skills
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Skill < ApplicationRecord

    has_many :superpowers, :dependent => :destroy
    has_many :requirements, :dependent => :destroy

end

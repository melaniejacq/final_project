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
    belongs_to :descriptor, :class_name => "Attribute", :foreign_key => "attribute_id"

    validates :candidate_id, :presence => true, :uniqueness => { :scope => :attribute_id }
    validates :attribute_id, :presence => true
    
end

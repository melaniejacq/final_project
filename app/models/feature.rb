# == Schema Information
#
# Table name: features
#
#  id           :integer          not null, primary key
#  job_id       :integer
#  attribute_id :integer
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Feature < ApplicationRecord

    belongs_to :job
    belongs_to :descriptor, :class_name => "Attribute"

    validates :job_id, :presence => true, :uniqueness => { :scope => :attribute_id }
    validates :attribute_id, :presence => true
    validates :description, :presence => true

end

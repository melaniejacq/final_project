# == Schema Information
#
# Table name: industries
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Industry < ApplicationRecord

    has_many :companies
    has_many :industry_preferences, :dependent => :destroy
    
    validates :name, :presence => true, :uniqueness => { :case_sensitive => false }

end

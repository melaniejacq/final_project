# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  name        :string
#  logo        :string
#  hq_address  :string
#  industry_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Company < ApplicationRecord

    has_many :recruiters, :dependent => :nullify
    has_many :jobs, :dependent => :destroy
    belongs_to :industry

    validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
    # validates :logo, :presence => true
    validates :hq_address, :presence => true
    validates :industry_id, :presence => true

end

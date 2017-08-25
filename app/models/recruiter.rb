# == Schema Information
#
# Table name: recruiters
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  first_name             :string
#  last_name              :string
#  company_id             :integer
#  linkedin_profile       :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_recruiters_on_email                 (email) UNIQUE
#  index_recruiters_on_reset_password_token  (reset_password_token) UNIQUE
#

class Recruiter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :jobs, :dependent => :nullify

  belongs_to :company, :required => false

  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  # validates :company_id, :presence => true

end

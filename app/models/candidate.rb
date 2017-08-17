# == Schema Information
#
# Table name: candidates
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
#  location               :string
#  linked_in_profile      :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_candidates_on_email                 (email) UNIQUE
#  index_candidates_on_reset_password_token  (reset_password_token) UNIQUE
#

class Candidate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
        has_many :matches, :dependent => :destroy
        has_many :superpowers, :dependent => :destroy
        has_many :preferences, :dependent => :destroy
        has_many :industry_preferences, :dependent => :destroy
        has_many :job_type_matches, :dependent => :destroy
         
end

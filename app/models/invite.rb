# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Invite < ApplicationRecord

    belongs_to :match, :required => false

    validates :match_id, :presence => true

end

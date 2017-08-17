# == Schema Information
#
# Table name: applications
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Application < ApplicationRecord

    belongs_to :match, :required => false

end

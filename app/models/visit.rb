# == Schema Information
#
# Table name: visits
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  start_date :date
#  end_date   :date
#  location   :text
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visit < ApplicationRecord
  belongs_to :user, :optional => true
end

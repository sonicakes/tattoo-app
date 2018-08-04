# == Schema Information
#
# Table name: works
#
#  id            :bigint(8)        not null, primary key
#  title         :text
#  user_id       :integer
#  price         :decimal(, )
#  artwork_image :text
#  category      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Work < ApplicationRecord
  belongs_to :user
end

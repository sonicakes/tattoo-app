# == Schema Information
#
# Table name: bookings
#
#  id          :bigint(8)        not null, primary key
#  customer_id :integer
#  artist_id   :integer
#  date        :date
#  start_hour  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Booking < ApplicationRecord
  belongs_to :customer, :class_name => 'User', optional: true #shorthand for :optional => true
  belongs_to :artist, :class_name => 'User', :optional => true
end

# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  password_digest :text
#  user_name       :text
#  email           :text
#  name            :text
#  profile_image   :text
#  location        :text
#  latitude        :float
#  longtitude      :float
#  phone           :text
#  is_artist       :boolean
#  blurb           :text
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :visits
  has_many :works
  has_many :customer_bookings, :class_name => 'Booking', :foreign_key => 'customer_id'
  has_many :artist_bookings, :class_name => 'Booking', :foreign_key => 'artist_bookings'
 end

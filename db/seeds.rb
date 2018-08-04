Booking.destroy_all
Visit.destroy_all
Work.destroy_all
User.destroy_all
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
#this user is admin only
user1 = User.create
  :password => "admin12345",
  :user_name => "admin_cool",
  :email => "admin@example.com",
  :name => "Admin Stroganoff",
  :profile_image => "",
  :location => "",
  :latitude => "",
  :longtitude => "",
  :phone => "05-38-37-75",
  :is_artist => false,
  :blurb => "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
  :is_admin => true

# this user is admin and artist at the same datetime
user2 = User.create
  :password => "chicken12345",
  :user_name => "great-artist",
  :email => "tatoo_king@example.com",
  :name => "Harrison Ford",
  :profile_image => "https://images.unsplash.com/photo-1485742032238-7543513eeba6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fcb9b99a534c70a94cf558bd07d3bffd&auto=format&fit=crop&w=1500&q=80",
  :location => "Sydney",
  :latitude => "",
  :longtitude => "",
  :phone => "234-657-343",
  :is_artist => true,
  :blurb => "First-rate tattos on demand"
  :is_admin => false

#this is artist only

#this is customer with booking already seeded

#this is customer with nothing booked yet
user1 = User.create :email => "bob@example.com", :name => "Bob Smith", :password => "bob12345"
user2 = User.create :email => "alice@example.com", :name => "Alice Green", :password => "alice12345"

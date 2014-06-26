# == Schema Information
#
# Table name: works
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :integer
#  medium     :string(255)
#  style      :string(255)
#  image      :text
#  artist_id  :integer
#  updated_at :datetime
#

class Work < ActiveRecord::Base
  belongs_to :artist
end

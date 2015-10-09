class User < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_uniqueness_of :card_number

  validates_presence_of :name
  validates_presence_of :card_number
end

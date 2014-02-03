class Show < ActiveRecord::Base
  has_many :plays
  has_many :improvisers, through: :plays
end

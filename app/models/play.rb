class Play < ActiveRecord::Base
  belongs_to :show
  belongs_to :improviser
end
